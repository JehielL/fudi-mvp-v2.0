//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:fudi_api/src/serializers.dart';
import 'package:fudi_api/src/auth/api_key_auth.dart';
import 'package:fudi_api/src/auth/basic_auth.dart';
import 'package:fudi_api/src/auth/bearer_auth.dart';
import 'package:fudi_api/src/auth/oauth.dart';
import 'package:fudi_api/src/api/analytics_api.dart';
import 'package:fudi_api/src/api/availability_api.dart';
import 'package:fudi_api/src/api/bookings_api.dart';
import 'package:fudi_api/src/api/dashboard_api.dart';
import 'package:fudi_api/src/api/fudi_direct_api.dart';
import 'package:fudi_api/src/api/favorites_api.dart';
import 'package:fudi_api/src/api/files_api.dart';
import 'package:fudi_api/src/api/menus_api.dart';
import 'package:fudi_api/src/api/private_admin_api_api.dart';
import 'package:fudi_api/src/api/promotions_api.dart';
import 'package:fudi_api/src/api/public_api_api.dart';
import 'package:fudi_api/src/api/ratings_api.dart';
import 'package:fudi_api/src/api/restaurant_follows_api.dart';
import 'package:fudi_api/src/api/restaurant_groups_api.dart';
import 'package:fudi_api/src/api/restaurants_api.dart';
import 'package:fudi_api/src/api/schedules_api.dart';
import 'package:fudi_api/src/api/users_api.dart';

class FudiApi {
  static const String basePath = r'http://localhost:8080';

  final Dio dio;
  final Serializers serializers;

  FudiApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : this.serializers = serializers ?? standardSerializers,
       this.dio =
           dio ??
           Dio(
             BaseOptions(
               baseUrl: basePathOverride ?? basePath,
               connectTimeout: const Duration(milliseconds: 5000),
               receiveTimeout: const Duration(milliseconds: 3000),
             ),
           ) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is OAuthInterceptor,
      ) as OAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the OAuth token associated with the given [name].
  ///
  /// If no [OAuthInterceptor] is registered or no token exists for the given
  /// [name], this method has no effect.
  void removeOAuthToken(String name) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is OAuthInterceptor,
      ) as OAuthInterceptor).tokens.remove(name);
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BearerAuthInterceptor,
      ) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the bearer authentication token associated with the given [name].
  ///
  /// If no [BearerAuthInterceptor] is registered or no token exists for the
  /// given [name], this method has no effect.
  void removeBearerAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BearerAuthInterceptor,
      ) as BearerAuthInterceptor).tokens.remove(name);
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BasicAuthInterceptor,
      ) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(
        username,
        password,
      );
    }
  }

  /// Removes the basic authentication credentials associated with the given [name].
  ///
  /// If no [BasicAuthInterceptor] is registered or no credentials exist for the
  /// given [name], this method has no effect.
  void removeBasicAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BasicAuthInterceptor,
      ) as BasicAuthInterceptor).authInfo.remove(name);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (element) => element is ApiKeyAuthInterceptor,
      ) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Removes the API key associated with the given [name].
  ///
  /// If no [ApiKeyAuthInterceptor] is registered or no API key exists for the
  /// given [name], this method has no effect.
  void removeApiKey(String name) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (element) => element is ApiKeyAuthInterceptor,
      ) as ApiKeyAuthInterceptor).apiKeys.remove(name);
    }
  }

  /// Get AnalyticsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AnalyticsApi getAnalyticsApi() {
    return AnalyticsApi(dio, serializers);
  }

  /// Get AvailabilityApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AvailabilityApi getAvailabilityApi() {
    return AvailabilityApi(dio, serializers);
  }

  /// Get BookingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BookingsApi getBookingsApi() {
    return BookingsApi(dio, serializers);
  }

  /// Get DashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardApi getDashboardApi() {
    return DashboardApi(dio, serializers);
  }

  /// Get FUDIDirectApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FUDIDirectApi getFUDIDirectApi() {
    return FUDIDirectApi(dio, serializers);
  }

  /// Get FavoritesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FavoritesApi getFavoritesApi() {
    return FavoritesApi(dio, serializers);
  }

  /// Get FilesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FilesApi getFilesApi() {
    return FilesApi(dio, serializers);
  }

  /// Get MenusApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MenusApi getMenusApi() {
    return MenusApi(dio, serializers);
  }

  /// Get PrivateAdminAPIApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PrivateAdminAPIApi getPrivateAdminAPIApi() {
    return PrivateAdminAPIApi(dio, serializers);
  }

  /// Get PromotionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PromotionsApi getPromotionsApi() {
    return PromotionsApi(dio, serializers);
  }

  /// Get PublicAPIApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PublicAPIApi getPublicAPIApi() {
    return PublicAPIApi(dio, serializers);
  }

  /// Get RatingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RatingsApi getRatingsApi() {
    return RatingsApi(dio, serializers);
  }

  /// Get RestaurantFollowsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RestaurantFollowsApi getRestaurantFollowsApi() {
    return RestaurantFollowsApi(dio, serializers);
  }

  /// Get RestaurantGroupsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RestaurantGroupsApi getRestaurantGroupsApi() {
    return RestaurantGroupsApi(dio, serializers);
  }

  /// Get RestaurantsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RestaurantsApi getRestaurantsApi() {
    return RestaurantsApi(dio, serializers);
  }

  /// Get SchedulesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SchedulesApi getSchedulesApi() {
    return SchedulesApi(dio, serializers);
  }

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
  }
}
