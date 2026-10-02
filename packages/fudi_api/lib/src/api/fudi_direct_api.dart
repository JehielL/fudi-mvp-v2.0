//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/api_util.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_request.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_response.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_status_request.dart';
import 'package:fudi_api/src/model/fudi_direct_origin_validation_request.dart';
import 'package:fudi_api/src/model/fudi_direct_origin_validation_response.dart';
import 'package:fudi_api/src/model/fudi_direct_public_installation_response.dart';

class FUDIDirectApi {
  final Dio _dio;

  final Serializers _serializers;

  const FUDIDirectApi(this._dio, this._serializers);

  /// Obtener configuracion publica de una instalacion FUDI Direct
  ///
  ///
  /// Parameters:
  /// * [publicId]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FudiDirectPublicInstallationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FudiDirectPublicInstallationResponse>>
  apiV1PublicDirectInstallationsPublicIdGet({
    required String publicId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/public/direct/installations/{publicId}'.replaceAll(
      '{'
      r'publicId'
      '}',
      Uri.encodeComponent(
        encodeQueryParameter(
          _serializers,
          publicId,
          const FullType(String),
        ).toString(),
      ),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FudiDirectPublicInstallationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(
                FudiDirectPublicInstallationResponse,
              ),
            ) as FudiDirectPublicInstallationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FudiDirectPublicInstallationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Validar el origen de un widget FUDI Direct
  ///
  ///
  /// Parameters:
  /// * [publicId]
  /// * [fudiDirectOriginValidationRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FudiDirectOriginValidationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FudiDirectOriginValidationResponse>>
  apiV1PublicDirectInstallationsPublicIdValidateOriginPost({
    required String publicId,
    required FudiDirectOriginValidationRequest
    fudiDirectOriginValidationRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/api/v1/public/direct/installations/{publicId}/validate-origin'
            .replaceAll(
              '{'
              r'publicId'
              '}',
              Uri.encodeComponent(
                encodeQueryParameter(
                  _serializers,
                  publicId,
                  const FullType(String),
                ).toString(),
              ),
            );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(FudiDirectOriginValidationRequest);
      _bodyData = _serializers.serialize(
        fudiDirectOriginValidationRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FudiDirectOriginValidationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(FudiDirectOriginValidationResponse),
            ) as FudiDirectOriginValidationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FudiDirectOriginValidationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Listar instalaciones FUDI Direct del restaurante
  ///
  ///
  /// Parameters:
  /// * [restaurantId]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<FudiDirectInstallationResponse>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<FudiDirectInstallationResponse>>>
  apiV1RestaurantsRestaurantIdDirectInstallationsGet({
    required int restaurantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/restaurants/{restaurantId}/direct/installations'
        .replaceAll(
          '{'
          r'restaurantId'
          '}',
          Uri.encodeComponent(
            encodeQueryParameter(
              _serializers,
              restaurantId,
              const FullType(int),
            ).toString(),
          ),
        );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerAuth'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<FudiDirectInstallationResponse>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [
                FullType(FudiDirectInstallationResponse),
              ]),
            ) as BuiltList<FudiDirectInstallationResponse>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<FudiDirectInstallationResponse>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Obtener una instalacion FUDI Direct
  ///
  ///
  /// Parameters:
  /// * [restaurantId]
  /// * [id]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FudiDirectInstallationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FudiDirectInstallationResponse>>
  apiV1RestaurantsRestaurantIdDirectInstallationsIdGet({
    required int restaurantId,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/api/v1/restaurants/{restaurantId}/direct/installations/{id}'
            .replaceAll(
              '{'
              r'restaurantId'
              '}',
              Uri.encodeComponent(
                encodeQueryParameter(
                  _serializers,
                  restaurantId,
                  const FullType(int),
                ).toString(),
              ),
            )
            .replaceAll(
              '{'
              r'id'
              '}',
              Uri.encodeComponent(
                encodeQueryParameter(
                  _serializers,
                  id,
                  const FullType(int),
                ).toString(),
              ),
            );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerAuth'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FudiDirectInstallationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(FudiDirectInstallationResponse),
            ) as FudiDirectInstallationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FudiDirectInstallationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Actualizar una instalacion FUDI Direct
  ///
  ///
  /// Parameters:
  /// * [restaurantId]
  /// * [id]
  /// * [fudiDirectInstallationRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FudiDirectInstallationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FudiDirectInstallationResponse>>
  apiV1RestaurantsRestaurantIdDirectInstallationsIdPut({
    required int restaurantId,
    required int id,
    required FudiDirectInstallationRequest fudiDirectInstallationRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/api/v1/restaurants/{restaurantId}/direct/installations/{id}'
            .replaceAll(
              '{'
              r'restaurantId'
              '}',
              Uri.encodeComponent(
                encodeQueryParameter(
                  _serializers,
                  restaurantId,
                  const FullType(int),
                ).toString(),
              ),
            )
            .replaceAll(
              '{'
              r'id'
              '}',
              Uri.encodeComponent(
                encodeQueryParameter(
                  _serializers,
                  id,
                  const FullType(int),
                ).toString(),
              ),
            );
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerAuth'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(FudiDirectInstallationRequest);
      _bodyData = _serializers.serialize(
        fudiDirectInstallationRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FudiDirectInstallationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(FudiDirectInstallationResponse),
            ) as FudiDirectInstallationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FudiDirectInstallationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Cambiar estado de una instalacion FUDI Direct
  ///
  ///
  /// Parameters:
  /// * [restaurantId]
  /// * [id]
  /// * [fudiDirectInstallationStatusRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FudiDirectInstallationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FudiDirectInstallationResponse>>
  apiV1RestaurantsRestaurantIdDirectInstallationsIdStatusPatch({
    required int restaurantId,
    required int id,
    required FudiDirectInstallationStatusRequest
    fudiDirectInstallationStatusRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/api/v1/restaurants/{restaurantId}/direct/installations/{id}/status'
            .replaceAll(
              '{'
              r'restaurantId'
              '}',
              Uri.encodeComponent(
                encodeQueryParameter(
                  _serializers,
                  restaurantId,
                  const FullType(int),
                ).toString(),
              ),
            )
            .replaceAll(
              '{'
              r'id'
              '}',
              Uri.encodeComponent(
                encodeQueryParameter(
                  _serializers,
                  id,
                  const FullType(int),
                ).toString(),
              ),
            );
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerAuth'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(FudiDirectInstallationStatusRequest);
      _bodyData = _serializers.serialize(
        fudiDirectInstallationStatusRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FudiDirectInstallationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(FudiDirectInstallationResponse),
            ) as FudiDirectInstallationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FudiDirectInstallationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Crear una instalacion FUDI Direct
  ///
  ///
  /// Parameters:
  /// * [restaurantId]
  /// * [fudiDirectInstallationRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FudiDirectInstallationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FudiDirectInstallationResponse>>
  apiV1RestaurantsRestaurantIdDirectInstallationsPost({
    required int restaurantId,
    required FudiDirectInstallationRequest fudiDirectInstallationRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/restaurants/{restaurantId}/direct/installations'
        .replaceAll(
          '{'
          r'restaurantId'
          '}',
          Uri.encodeComponent(
            encodeQueryParameter(
              _serializers,
              restaurantId,
              const FullType(int),
            ).toString(),
          ),
        );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerAuth'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(FudiDirectInstallationRequest);
      _bodyData = _serializers.serialize(
        fudiDirectInstallationRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FudiDirectInstallationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(FudiDirectInstallationResponse),
            ) as FudiDirectInstallationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FudiDirectInstallationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
