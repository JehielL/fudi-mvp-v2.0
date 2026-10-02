# Ajustes locales de contrato verificados contra Java, sin escribir en backend.
function Prepare-ProductContract {
    param([System.Collections.IDictionary]$Contract)

    if ($Contract.openapi -ne '3.0.3') {
        throw 'La version OpenAPI cambio; revisar compatibilidad antes de regenerar.'
    }

    $schemas = $Contract.components.schemas
    # Java usa records independientes. allOf con arrays de subtipos rompe dart-dio.
    $admin = $schemas.RecommendationAdmin
    if ($admin.allOf) {
        $properties = [ordered]@{}
        $required = [Collections.Generic.HashSet[string]]::new()
        foreach ($part in $admin.allOf) {
            if ($part['$ref']) {
                $part = $schemas[$part['$ref'].Split('/')[-1]]
            }
            foreach ($name in $part.properties.Keys) { $properties[$name] = $part.properties[$name] }
            foreach ($name in $part.required) { [void]$required.Add($name) }
        }
        $schemas.RecommendationAdmin = [ordered]@{
            type = 'object'; properties = $properties; required = @($required | Sort-Object)
        }
    }
    $schemas.RestaurantPublic.properties.slug = [ordered]@{ type = 'string' }

    $request = $schemas['_api_v1_bookings_post_request']
    if (-not $request) { throw 'El request de reservas cambio; revisar los ajustes locales.' }
    $request.properties.observations = [ordered]@{ type = 'string'; maxLength = 1000 }
    $request.properties.interior = [ordered]@{ type = 'boolean' }

    # El GET publico devuelve BookingPublicDTO, no el DTO privado BookingCustomer.
    $publicProperties = [ordered]@{}
    foreach ($name in @(
        'id', 'bookingCode', 'bookingDate', 'bookingTime', 'numPeople', 'status',
        'interior', 'customerConfirmationStatus', 'customerConfirmationRequestedAt',
        'customerConfirmedAt', 'customerDeclinedAt', 'restaurant'
    )) {
        $property = $schemas.BookingCustomer.properties[$name]
        if (-not $property) { throw "Falta el campo de contrato BookingCustomer.$name" }
        $publicProperties[$name] = $property
    }
    $schemas.BookingPublic = [ordered]@{ type = 'object'; properties = $publicProperties }
    $response = $Contract.paths['/api/v1/bookings/public/{bookingCode}'].get.responses['200']
    $response.content['application/json'].schema = [ordered]@{ '$ref' = '#/components/schemas/BookingPublic' }

    # Valores reales de com.fudi.backend.model.RestaurantType, tambien usados por Menu.
    $schemas.Menu.properties.restaurantType.enum = @(
        'JAPANESE_FOOD', 'THAI_FOOD', 'SPAIN_FOOD', 'CHINESE_FOOD', 'BRUNCH',
        'COFFEE_STORE', 'BAR', 'VIETNAM_FOOD', 'ITALIAN_FOOD', 'FRENCH_FOOD',
        'TEX_MEX_FOOD', 'KOREAN_FOOD', 'VEGAN_FOOD', 'AMERICAN_FOOD', 'GERMAN_FOOD',
        'PORTUGUESE_FOOD', 'FUSION_FOOD', 'GREEK_FOOD', 'INDIAN_FOOD', 'PERUVIAN_FOOD',
        'CANADIAN_FOOD', 'DOMINICAN_FOOD', 'LATIN_AMERICAN_FOOD', 'ARGENTINE_FOOD',
        'BALKAN_FOOD', 'GEORGIAN_FOOD', 'ARABIAN_FOOD', 'MARRAKECH_FOOD', 'ASIAN_FOOD',
        'AFRICAN_FOOD', 'MAGHREB_FOOD', 'CARIBBEAN_FOOD'
    )

    # La conversion elimina claves invalidas nacidas de comas YAML sin comillas.
    $Contract.paths['/api/v1/admin/recommendations/{id}'].put.responses['400'].description =
        'Datos, mercado, restaurante o posicion invalidos.'
    $Contract.paths['/api/v1/admin/recommendations/{id}/restaurants'].put.responses['400'].description =
        'Restaurante, posicion o mercado invalido.'

    return $Contract
}
