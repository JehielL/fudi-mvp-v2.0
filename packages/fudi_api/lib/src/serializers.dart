//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:fudi_api/src/date_serializer.dart';
import 'package:fudi_api/src/model/date.dart';

import 'package:fudi_api/src/model/admin_restaurant_owner_assign_request.dart';
import 'package:fudi_api/src/model/api_private_v1_bookings_id_get200_response.dart';
import 'package:fudi_api/src/model/api_private_v1_bookings_id_status_cancel_patch_request.dart';
import 'package:fudi_api/src/model/api_private_v1_bookings_id_status_reject_patch_request.dart';
import 'package:fudi_api/src/model/api_v1_auth_google_post200_response.dart';
import 'package:fudi_api/src/model/api_v1_auth_google_post_request.dart';
import 'package:fudi_api/src/model/api_v1_bookings_post_request.dart';
import 'package:fudi_api/src/model/api_v1_dashboard_restaurants_restaurant_id_monthly_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_dashboard_restaurants_restaurant_id_quick_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_dashboard_restaurants_restaurant_id_today_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_favorites_check_restaurant_id_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_favorites_count_restaurant_id_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_favorites_restaurant_id_toggle_post200_response.dart';
import 'package:fudi_api/src/model/api_v1_legal_current_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_menus_menu_id_sections_post_request.dart';
import 'package:fudi_api/src/model/api_v1_menus_menu_id_sections_reorder_put_request.dart';
import 'package:fudi_api/src/model/api_v1_menus_menu_id_sections_reorder_put_request_items_inner.dart';
import 'package:fudi_api/src/model/api_v1_menus_menu_id_sections_section_id_patch_request.dart';
import 'package:fudi_api/src/model/api_v1_menus_menu_id_toggle_like_post200_response.dart';
import 'package:fudi_api/src/model/api_v1_promotions_id_apply_post200_response.dart';
import 'package:fudi_api/src/model/api_v1_ratings_rating_id_liked_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_recommendations_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_restaurant_follows_count_restaurant_id_get200_response.dart';
import 'package:fudi_api/src/model/api_v1_users_id_restaurants_put_request.dart';
import 'package:fudi_api/src/model/api_v1_users_id_role_patch_request.dart';
import 'package:fudi_api/src/model/api_v1_users_me_consents_post_request.dart';
import 'package:fudi_api/src/model/availability_response.dart';
import 'package:fudi_api/src/model/booking.dart';
import 'package:fudi_api/src/model/booking_acquisition_context.dart';
import 'package:fudi_api/src/model/booking_acquisition_source.dart';
import 'package:fudi_api/src/model/booking_contact_action_request.dart';
import 'package:fudi_api/src/model/booking_contact_action_response.dart';
import 'package:fudi_api/src/model/booking_customer.dart';
import 'package:fudi_api/src/model/booking_customer_cancellation_request.dart';
import 'package:fudi_api/src/model/booking_customer_cancellation_response.dart';
import 'package:fudi_api/src/model/booking_customer_confirmation_response.dart';
import 'package:fudi_api/src/model/booking_customer_confirmation_status.dart';
import 'package:fudi_api/src/model/booking_customer_decline_request.dart';
import 'package:fudi_api/src/model/booking_public.dart';
import 'package:fudi_api/src/model/booking_restaurant.dart';
import 'package:fudi_api/src/model/booking_restaurant_summary.dart';
import 'package:fudi_api/src/model/booking_status.dart';
import 'package:fudi_api/src/model/booking_user_summary.dart';
import 'package:fudi_api/src/model/change_password_request.dart';
import 'package:fudi_api/src/model/closed_date.dart';
import 'package:fudi_api/src/model/closed_date_request.dart';
import 'package:fudi_api/src/model/comparison_dto.dart';
import 'package:fudi_api/src/model/daily_metric_dto.dart';
import 'package:fudi_api/src/model/dashboard_analytics_dto.dart';
import 'package:fudi_api/src/model/dashboard_stats.dart';
import 'package:fudi_api/src/model/dish.dart';
import 'package:fudi_api/src/model/dish_filter_section.dart';
import 'package:fudi_api/src/model/dish_filters_response.dart';
import 'package:fudi_api/src/model/dish_menu_restaurant.dart';
import 'package:fudi_api/src/model/dish_menu_section.dart';
import 'package:fudi_api/src/model/dish_menu_summary.dart';
import 'package:fudi_api/src/model/error.dart';
import 'package:fudi_api/src/model/favorite.dart';
import 'package:fudi_api/src/model/favorite_response.dart';
import 'package:fudi_api/src/model/forgot_password_request.dart';
import 'package:fudi_api/src/model/forgot_password_response.dart';
import 'package:fudi_api/src/model/fudi_direct_channel.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_request.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_response.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_status.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_status_request.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_type.dart';
import 'package:fudi_api/src/model/fudi_direct_origin_validation_request.dart';
import 'package:fudi_api/src/model/fudi_direct_origin_validation_response.dart';
import 'package:fudi_api/src/model/fudi_direct_public_installation_response.dart';
import 'package:fudi_api/src/model/hourly_metric_dto.dart';
import 'package:fudi_api/src/model/insights_dto.dart';
import 'package:fudi_api/src/model/like_response.dart';
import 'package:fudi_api/src/model/login.dart';
import 'package:fudi_api/src/model/menu.dart';
import 'package:fudi_api/src/model/menu_section.dart';
import 'package:fudi_api/src/model/period_dto.dart';
import 'package:fudi_api/src/model/promotion.dart';
import 'package:fudi_api/src/model/promotion_backoffice.dart';
import 'package:fudi_api/src/model/promotion_public.dart';
import 'package:fudi_api/src/model/promotion_request.dart';
import 'package:fudi_api/src/model/promotion_type.dart';
import 'package:fudi_api/src/model/quick_stats_dto.dart';
import 'package:fudi_api/src/model/rates_dto.dart';
import 'package:fudi_api/src/model/rating.dart';
import 'package:fudi_api/src/model/rating_author_public.dart';
import 'package:fudi_api/src/model/rating_image.dart';
import 'package:fudi_api/src/model/rating_image_public.dart';
import 'package:fudi_api/src/model/rating_public.dart';
import 'package:fudi_api/src/model/rating_restaurant_reference.dart';
import 'package:fudi_api/src/model/rating_restaurant_summary.dart';
import 'package:fudi_api/src/model/rating_update_request.dart';
import 'package:fudi_api/src/model/recommendation_admin.dart';
import 'package:fudi_api/src/model/recommendation_category.dart';
import 'package:fudi_api/src/model/recommendation_page.dart';
import 'package:fudi_api/src/model/recommendation_public.dart';
import 'package:fudi_api/src/model/recommendation_restaurant_admin.dart';
import 'package:fudi_api/src/model/recommendation_restaurant_link_request.dart';
import 'package:fudi_api/src/model/recommendation_restaurant_public.dart';
import 'package:fudi_api/src/model/recommendation_status.dart';
import 'package:fudi_api/src/model/recommendation_summary.dart';
import 'package:fudi_api/src/model/recommendation_write_request.dart';
import 'package:fudi_api/src/model/register.dart';
import 'package:fudi_api/src/model/reset_password_request.dart';
import 'package:fudi_api/src/model/restaurant.dart';
import 'package:fudi_api/src/model/restaurant_backoffice.dart';
import 'package:fudi_api/src/model/restaurant_follow_response.dart';
import 'package:fudi_api/src/model/restaurant_follow_state.dart';
import 'package:fudi_api/src/model/restaurant_follow_toggle_response.dart';
import 'package:fudi_api/src/model/restaurant_group.dart';
import 'package:fudi_api/src/model/restaurant_group_access.dart';
import 'package:fudi_api/src/model/restaurant_group_create_request.dart';
import 'package:fudi_api/src/model/restaurant_group_member.dart';
import 'package:fudi_api/src/model/restaurant_group_membership_create_request.dart';
import 'package:fudi_api/src/model/restaurant_group_membership_update_request.dart';
import 'package:fudi_api/src/model/restaurant_group_status_update_request.dart';
import 'package:fudi_api/src/model/restaurant_group_summary.dart';
import 'package:fudi_api/src/model/restaurant_group_update_request.dart';
import 'package:fudi_api/src/model/restaurant_group_user_summary.dart';
import 'package:fudi_api/src/model/restaurant_group_workspace.dart';
import 'package:fudi_api/src/model/restaurant_group_workspace_restaurant.dart';
import 'package:fudi_api/src/model/restaurant_group_workspace_summary.dart';
import 'package:fudi_api/src/model/restaurant_invite.dart';
import 'package:fudi_api/src/model/restaurant_invite_accept_response.dart';
import 'package:fudi_api/src/model/restaurant_invite_create_request.dart';
import 'package:fudi_api/src/model/restaurant_invite_public.dart';
import 'package:fudi_api/src/model/restaurant_member.dart';
import 'package:fudi_api/src/model/restaurant_membership_create_request.dart';
import 'package:fudi_api/src/model/restaurant_membership_update_request.dart';
import 'package:fudi_api/src/model/restaurant_move_group_request.dart';
import 'package:fudi_api/src/model/restaurant_open_status.dart';
import 'package:fudi_api/src/model/restaurant_owner_summary.dart';
import 'package:fudi_api/src/model/restaurant_public.dart';
import 'package:fudi_api/src/model/restaurant_schedule.dart';
import 'package:fudi_api/src/model/restaurant_schedule_request.dart';
import 'package:fudi_api/src/model/set_local_password_request.dart';
import 'package:fudi_api/src/model/status_metrics_dto.dart';
import 'package:fudi_api/src/model/summary_dto.dart';
import 'package:fudi_api/src/model/time_slot_dto.dart';
import 'package:fudi_api/src/model/token.dart';
import 'package:fudi_api/src/model/trends_dto.dart';
import 'package:fudi_api/src/model/user.dart';
import 'package:fudi_api/src/model/user_market_preferences.dart';
import 'package:fudi_api/src/model/user_market_preferences_update_request.dart';
import 'package:fudi_api/src/model/user_security_capabilities.dart';
import 'package:fudi_api/src/model/weekday_metric_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdminRestaurantOwnerAssignRequest,
  ApiPrivateV1BookingsIdGet200Response,
  ApiPrivateV1BookingsIdStatusCancelPatchRequest,
  ApiPrivateV1BookingsIdStatusRejectPatchRequest,
  ApiV1AuthGooglePost200Response,
  ApiV1AuthGooglePostRequest,
  ApiV1BookingsPostRequest,
  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response,
  ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response,
  ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response,
  ApiV1FavoritesCheckRestaurantIdGet200Response,
  ApiV1FavoritesCountRestaurantIdGet200Response,
  ApiV1FavoritesRestaurantIdTogglePost200Response,
  ApiV1LegalCurrentGet200Response,
  ApiV1MenusMenuIdSectionsPostRequest,
  ApiV1MenusMenuIdSectionsReorderPutRequest,
  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner,
  ApiV1MenusMenuIdSectionsSectionIdPatchRequest,
  ApiV1MenusMenuIdToggleLikePost200Response,
  ApiV1PromotionsIdApplyPost200Response,
  ApiV1RatingsRatingIdLikedGet200Response,
  ApiV1RecommendationsGet200Response,
  ApiV1RestaurantFollowsCountRestaurantIdGet200Response,
  ApiV1UsersIdRestaurantsPutRequest,
  ApiV1UsersIdRolePatchRequest,
  ApiV1UsersMeConsentsPostRequest,
  AvailabilityResponse,
  Booking,
  BookingAcquisitionContext,
  BookingAcquisitionSource,
  BookingContactActionRequest,
  BookingContactActionResponse,
  BookingCustomer,
  BookingCustomerCancellationRequest,
  BookingCustomerCancellationResponse,
  BookingCustomerConfirmationResponse,
  BookingCustomerConfirmationStatus,
  BookingCustomerDeclineRequest,
  BookingPublic,
  BookingRestaurant,
  BookingRestaurantSummary,
  BookingStatus,
  BookingUserSummary,
  ChangePasswordRequest,
  ClosedDate,
  ClosedDateRequest,
  ComparisonDTO,
  DailyMetricDTO,
  DashboardAnalyticsDTO,
  DashboardStats,
  Dish,
  DishFilterSection,
  DishFiltersResponse,
  DishMenuRestaurant,
  DishMenuSection,
  DishMenuSummary,
  Error,
  Favorite,
  FavoriteResponse,
  ForgotPasswordRequest,
  ForgotPasswordResponse,
  FudiDirectChannel,
  FudiDirectInstallationRequest,
  FudiDirectInstallationResponse,
  FudiDirectInstallationStatus,
  FudiDirectInstallationStatusRequest,
  FudiDirectInstallationType,
  FudiDirectOriginValidationRequest,
  FudiDirectOriginValidationResponse,
  FudiDirectPublicInstallationResponse,
  HourlyMetricDTO,
  InsightsDTO,
  LikeResponse,
  Login,
  Menu,
  MenuSection,
  PeriodDTO,
  Promotion,
  PromotionBackoffice,
  PromotionPublic,
  PromotionRequest,
  PromotionType,
  QuickStatsDTO,
  RatesDTO,
  Rating,
  RatingAuthorPublic,
  RatingImage,
  RatingImagePublic,
  RatingPublic,
  RatingRestaurantReference,
  RatingRestaurantSummary,
  RatingUpdateRequest,
  RecommendationAdmin,
  RecommendationCategory,
  RecommendationPage,
  RecommendationPublic,
  RecommendationRestaurantAdmin,
  RecommendationRestaurantLinkRequest,
  RecommendationRestaurantPublic,
  $RecommendationRestaurantPublic,
  RecommendationStatus,
  RecommendationSummary,
  $RecommendationSummary,
  RecommendationWriteRequest,
  Register,
  ResetPasswordRequest,
  Restaurant,
  RestaurantBackoffice,
  RestaurantFollowResponse,
  RestaurantFollowState,
  $RestaurantFollowState,
  RestaurantFollowToggleResponse,
  RestaurantGroup,
  RestaurantGroupAccess,
  RestaurantGroupCreateRequest,
  RestaurantGroupMember,
  RestaurantGroupMembershipCreateRequest,
  RestaurantGroupMembershipUpdateRequest,
  RestaurantGroupStatusUpdateRequest,
  RestaurantGroupSummary,
  RestaurantGroupUpdateRequest,
  RestaurantGroupUserSummary,
  RestaurantGroupWorkspace,
  RestaurantGroupWorkspaceRestaurant,
  RestaurantGroupWorkspaceSummary,
  RestaurantInvite,
  RestaurantInviteAcceptResponse,
  RestaurantInviteCreateRequest,
  RestaurantInvitePublic,
  RestaurantMember,
  RestaurantMembershipCreateRequest,
  RestaurantMembershipUpdateRequest,
  RestaurantMoveGroupRequest,
  RestaurantOpenStatus,
  RestaurantOwnerSummary,
  RestaurantPublic,
  $RestaurantPublic,
  RestaurantSchedule,
  RestaurantScheduleRequest,
  SetLocalPasswordRequest,
  StatusMetricsDTO,
  SummaryDTO,
  TimeSlotDTO,
  Token,
  TrendsDTO,
  User,
  UserMarketPreferences,
  UserMarketPreferencesUpdateRequest,
  UserSecurityCapabilities,
  WeekdayMetricDTO,
])
Serializers serializers =
    (_$serializers.toBuilder()
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantFollowResponse)]),
            () => ListBuilder<RestaurantFollowResponse>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(Booking)]),
            () => ListBuilder<Booking>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantSchedule)]),
            () => ListBuilder<RestaurantSchedule>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(MenuSection)]),
            () => ListBuilder<MenuSection>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [
              FullType(RestaurantGroupWorkspaceRestaurant),
            ]),
            () => ListBuilder<RestaurantGroupWorkspaceRestaurant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantPublic)]),
            () => ListBuilder<RestaurantPublic>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantMember)]),
            () => ListBuilder<RestaurantMember>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RecommendationAdmin)]),
            () => ListBuilder<RecommendationAdmin>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantScheduleRequest)]),
            () => ListBuilder<RestaurantScheduleRequest>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(TimeSlotDTO)]),
            () => ListBuilder<TimeSlotDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(Dish)]),
            () => ListBuilder<Dish>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [
              FullType(RecommendationRestaurantAdmin),
            ]),
            () => ListBuilder<RecommendationRestaurantAdmin>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(BookingRestaurant)]),
            () => ListBuilder<BookingRestaurant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RatingImagePublic)]),
            () => ListBuilder<RatingImagePublic>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantGroupMember)]),
            () => ListBuilder<RestaurantGroupMember>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RecommendationSummary)]),
            () => ListBuilder<RecommendationSummary>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantGroup)]),
            () => ListBuilder<RestaurantGroup>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(PromotionBackoffice)]),
            () => ListBuilder<PromotionBackoffice>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, [
              FullType(String),
              FullType(ComparisonDTO),
            ]),
            () => MapBuilder<String, ComparisonDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(PromotionPublic)]),
            () => ListBuilder<PromotionPublic>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [
              FullType(RecommendationRestaurantLinkRequest),
            ]),
            () => ListBuilder<RecommendationRestaurantLinkRequest>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(HourlyMetricDTO)]),
            () => ListBuilder<HourlyMetricDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(User)]),
            () => ListBuilder<User>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(WeekdayMetricDTO)]),
            () => ListBuilder<WeekdayMetricDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(ClosedDateRequest)]),
            () => ListBuilder<ClosedDateRequest>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantBackoffice)]),
            () => ListBuilder<RestaurantBackoffice>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(AvailabilityResponse)]),
            () => ListBuilder<AvailabilityResponse>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [
              FullType(FudiDirectInstallationResponse),
            ]),
            () => ListBuilder<FudiDirectInstallationResponse>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [
              FullType(RecommendationRestaurantPublic),
            ]),
            () => ListBuilder<RecommendationRestaurantPublic>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(ClosedDate)]),
            () => ListBuilder<ClosedDate>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RatingImage)]),
            () => ListBuilder<RatingImage>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RatingPublic)]),
            () => ListBuilder<RatingPublic>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(RestaurantInvite)]),
            () => ListBuilder<RestaurantInvite>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(int)]),
            () => ListBuilder<int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(DishFilterSection)]),
            () => ListBuilder<DishFilterSection>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(DailyMetricDTO)]),
            () => ListBuilder<DailyMetricDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(BookingCustomer)]),
            () => ListBuilder<BookingCustomer>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(FavoriteResponse)]),
            () => ListBuilder<FavoriteResponse>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(Menu)]),
            () => ListBuilder<Menu>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, [
              FullType(String),
              FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [
              FullType(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner),
            ]),
            () =>
                ListBuilder<
                  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner
                >(),
          )
          ..add(RecommendationRestaurantPublic.serializer)
          ..add(RecommendationSummary.serializer)
          ..add(RestaurantFollowState.serializer)
          ..add(RestaurantPublic.serializer)
          ..add(const OneOfSerializer())
          ..add(const AnyOfSerializer())
          ..add(const DateSerializer())
          ..add(Iso8601DateTimeSerializer()))
        .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
