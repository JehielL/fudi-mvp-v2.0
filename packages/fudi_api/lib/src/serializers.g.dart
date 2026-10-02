// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add($RecommendationRestaurantPublic.serializer)
          ..add($RecommendationSummary.serializer)
          ..add($RestaurantFollowState.serializer)
          ..add($RestaurantPublic.serializer)
          ..add(AdminRestaurantOwnerAssignRequest.serializer)
          ..add(ApiPrivateV1BookingsIdGet200Response.serializer)
          ..add(ApiPrivateV1BookingsIdStatusCancelPatchRequest.serializer)
          ..add(ApiPrivateV1BookingsIdStatusRejectPatchRequest.serializer)
          ..add(ApiV1AuthGooglePost200Response.serializer)
          ..add(ApiV1AuthGooglePost200ResponseRoleEnum.serializer)
          ..add(ApiV1AuthGooglePostRequest.serializer)
          ..add(ApiV1BookingsPostRequest.serializer)
          ..add(
            ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response
                .serializer,
          )
          ..add(
            ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response.serializer,
          )
          ..add(
            ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response.serializer,
          )
          ..add(ApiV1FavoritesCheckRestaurantIdGet200Response.serializer)
          ..add(ApiV1FavoritesCountRestaurantIdGet200Response.serializer)
          ..add(ApiV1FavoritesRestaurantIdTogglePost200Response.serializer)
          ..add(ApiV1LegalCurrentGet200Response.serializer)
          ..add(ApiV1MenusMenuIdSectionsPostRequest.serializer)
          ..add(ApiV1MenusMenuIdSectionsReorderPutRequest.serializer)
          ..add(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner.serializer)
          ..add(ApiV1MenusMenuIdSectionsSectionIdPatchRequest.serializer)
          ..add(ApiV1MenusMenuIdToggleLikePost200Response.serializer)
          ..add(ApiV1PromotionsIdApplyPost200Response.serializer)
          ..add(ApiV1RatingsRatingIdLikedGet200Response.serializer)
          ..add(ApiV1RecommendationsGet200Response.serializer)
          ..add(
            ApiV1RestaurantFollowsCountRestaurantIdGet200Response.serializer,
          )
          ..add(ApiV1UsersIdRestaurantsPutRequest.serializer)
          ..add(ApiV1UsersIdRolePatchRequest.serializer)
          ..add(ApiV1UsersIdRolePatchRequestRoleEnum.serializer)
          ..add(ApiV1UsersMeConsentsPostRequest.serializer)
          ..add(AvailabilityResponse.serializer)
          ..add(Booking.serializer)
          ..add(BookingAcquisitionContext.serializer)
          ..add(BookingAcquisitionSource.serializer)
          ..add(BookingContactActionRequest.serializer)
          ..add(BookingContactActionRequestActionEnum.serializer)
          ..add(BookingContactActionResponse.serializer)
          ..add(BookingContactActionResponseActionEnum.serializer)
          ..add(BookingCustomer.serializer)
          ..add(BookingCustomerCancellationRequest.serializer)
          ..add(BookingCustomerCancellationResponse.serializer)
          ..add(BookingCustomerCancellationResponseCodeEnum.serializer)
          ..add(BookingCustomerConfirmationResponse.serializer)
          ..add(BookingCustomerConfirmationStatus.serializer)
          ..add(BookingCustomerDeclineRequest.serializer)
          ..add(BookingPublic.serializer)
          ..add(BookingRestaurant.serializer)
          ..add(BookingRestaurantSummary.serializer)
          ..add(BookingStatus.serializer)
          ..add(BookingStatusEnum.serializer)
          ..add(BookingUserSummary.serializer)
          ..add(ChangePasswordRequest.serializer)
          ..add(ClosedDate.serializer)
          ..add(ClosedDateRequest.serializer)
          ..add(ComparisonDTO.serializer)
          ..add(ComparisonDTOTrendEnum.serializer)
          ..add(DailyMetricDTO.serializer)
          ..add(DashboardAnalyticsDTO.serializer)
          ..add(DashboardStats.serializer)
          ..add(Dish.serializer)
          ..add(DishFilterSection.serializer)
          ..add(DishFiltersResponse.serializer)
          ..add(DishMenuRestaurant.serializer)
          ..add(DishMenuSection.serializer)
          ..add(DishMenuSummary.serializer)
          ..add(Error.serializer)
          ..add(Favorite.serializer)
          ..add(FavoriteResponse.serializer)
          ..add(ForgotPasswordRequest.serializer)
          ..add(ForgotPasswordResponse.serializer)
          ..add(FudiDirectChannel.serializer)
          ..add(FudiDirectInstallationRequest.serializer)
          ..add(FudiDirectInstallationResponse.serializer)
          ..add(FudiDirectInstallationStatus.serializer)
          ..add(FudiDirectInstallationStatusRequest.serializer)
          ..add(FudiDirectInstallationType.serializer)
          ..add(FudiDirectOriginValidationRequest.serializer)
          ..add(FudiDirectOriginValidationResponse.serializer)
          ..add(FudiDirectPublicInstallationResponse.serializer)
          ..add(HourlyMetricDTO.serializer)
          ..add(InsightsDTO.serializer)
          ..add(LikeResponse.serializer)
          ..add(Login.serializer)
          ..add(Menu.serializer)
          ..add(MenuRestaurantTypeEnum.serializer)
          ..add(MenuSection.serializer)
          ..add(PeriodDTO.serializer)
          ..add(Promotion.serializer)
          ..add(PromotionBackoffice.serializer)
          ..add(PromotionPublic.serializer)
          ..add(PromotionRequest.serializer)
          ..add(PromotionType.serializer)
          ..add(QuickStatsDTO.serializer)
          ..add(RatesDTO.serializer)
          ..add(Rating.serializer)
          ..add(RatingAuthorPublic.serializer)
          ..add(RatingImage.serializer)
          ..add(RatingImagePublic.serializer)
          ..add(RatingPublic.serializer)
          ..add(RatingRestaurantReference.serializer)
          ..add(RatingRestaurantSummary.serializer)
          ..add(RatingUpdateRequest.serializer)
          ..add(RecommendationAdmin.serializer)
          ..add(RecommendationCategory.serializer)
          ..add(RecommendationPage.serializer)
          ..add(RecommendationPublic.serializer)
          ..add(RecommendationRestaurantAdmin.serializer)
          ..add(RecommendationRestaurantLinkRequest.serializer)
          ..add(RecommendationStatus.serializer)
          ..add(RecommendationWriteRequest.serializer)
          ..add(Register.serializer)
          ..add(ResetPasswordRequest.serializer)
          ..add(Restaurant.serializer)
          ..add(RestaurantBackoffice.serializer)
          ..add(RestaurantFollowResponse.serializer)
          ..add(RestaurantFollowToggleResponse.serializer)
          ..add(RestaurantGroup.serializer)
          ..add(RestaurantGroupAccess.serializer)
          ..add(RestaurantGroupAccessContextModeEnum.serializer)
          ..add(RestaurantGroupAccessGroupRoleEnum.serializer)
          ..add(RestaurantGroupCreateRequest.serializer)
          ..add(RestaurantGroupCreateRequestLifecycleStatusEnum.serializer)
          ..add(RestaurantGroupCreateRequestTypeEnum.serializer)
          ..add(RestaurantGroupLifecycleStatusEnum.serializer)
          ..add(RestaurantGroupMember.serializer)
          ..add(RestaurantGroupMemberGroupRoleEnum.serializer)
          ..add(RestaurantGroupMemberStatusEnum.serializer)
          ..add(RestaurantGroupMemberUserRoleEnum.serializer)
          ..add(RestaurantGroupMembershipCreateRequest.serializer)
          ..add(RestaurantGroupMembershipCreateRequestRoleEnum.serializer)
          ..add(RestaurantGroupMembershipCreateRequestStatusEnum.serializer)
          ..add(RestaurantGroupMembershipUpdateRequest.serializer)
          ..add(RestaurantGroupMembershipUpdateRequestRoleEnum.serializer)
          ..add(RestaurantGroupMembershipUpdateRequestStatusEnum.serializer)
          ..add(RestaurantGroupStatusUpdateRequest.serializer)
          ..add(RestaurantGroupSummary.serializer)
          ..add(RestaurantGroupTypeEnum.serializer)
          ..add(RestaurantGroupUpdateRequest.serializer)
          ..add(RestaurantGroupUpdateRequestLifecycleStatusEnum.serializer)
          ..add(RestaurantGroupUpdateRequestTypeEnum.serializer)
          ..add(RestaurantGroupUserSummary.serializer)
          ..add(RestaurantGroupUserSummaryRoleEnum.serializer)
          ..add(RestaurantGroupWorkspace.serializer)
          ..add(RestaurantGroupWorkspaceRestaurant.serializer)
          ..add(
            RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
                .serializer,
          )
          ..add(RestaurantGroupWorkspaceSummary.serializer)
          ..add(RestaurantInvite.serializer)
          ..add(RestaurantInviteAcceptResponse.serializer)
          ..add(RestaurantInviteAcceptResponseUserRoleEnum.serializer)
          ..add(RestaurantInviteCreateRequest.serializer)
          ..add(RestaurantInviteCreateRequestRoleEnum.serializer)
          ..add(RestaurantInvitePublic.serializer)
          ..add(RestaurantInviteRoleEnum.serializer)
          ..add(RestaurantInviteStatusEnum.serializer)
          ..add(RestaurantMember.serializer)
          ..add(RestaurantMemberGlobalRoleEnum.serializer)
          ..add(RestaurantMemberMembershipRoleEnum.serializer)
          ..add(RestaurantMemberMembershipStatusEnum.serializer)
          ..add(RestaurantMembershipCreateRequest.serializer)
          ..add(RestaurantMembershipCreateRequestRoleEnum.serializer)
          ..add(RestaurantMembershipCreateRequestStatusEnum.serializer)
          ..add(RestaurantMembershipUpdateRequest.serializer)
          ..add(RestaurantMembershipUpdateRequestRoleEnum.serializer)
          ..add(RestaurantMembershipUpdateRequestStatusEnum.serializer)
          ..add(RestaurantMoveGroupRequest.serializer)
          ..add(RestaurantOpenStatus.serializer)
          ..add(RestaurantOpenStatusStatusSourceEnum.serializer)
          ..add(RestaurantOwnerSummary.serializer)
          ..add(RestaurantOwnerSummaryRoleEnum.serializer)
          ..add(RestaurantRestaurantTypeEnum.serializer)
          ..add(RestaurantSchedule.serializer)
          ..add(RestaurantScheduleDayOfWeekEnum.serializer)
          ..add(RestaurantScheduleRequest.serializer)
          ..add(RestaurantScheduleRequestDayOfWeekEnum.serializer)
          ..add(SetLocalPasswordRequest.serializer)
          ..add(StatusMetricsDTO.serializer)
          ..add(SummaryDTO.serializer)
          ..add(TimeSlotDTO.serializer)
          ..add(TimeSlotDTOBookingModeEnum.serializer)
          ..add(Token.serializer)
          ..add(TrendsDTO.serializer)
          ..add(User.serializer)
          ..add(UserMarketPreferences.serializer)
          ..add(UserMarketPreferencesUpdateRequest.serializer)
          ..add(UserRoleEnum.serializer)
          ..add(UserSecurityCapabilities.serializer)
          ..add(UserSecurityCapabilitiesAuthProvidersEnum.serializer)
          ..add(WeekdayMetricDTO.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(
                ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner,
              ),
            ]),
            () =>
                ListBuilder<
                  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner
                >(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Booking)]),
            () => ListBuilder<Booking>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Booking)]),
            () => ListBuilder<Booking>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Booking)]),
            () => ListBuilder<Booking>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(BookingRestaurant),
            ]),
            () => ListBuilder<BookingRestaurant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(BookingRestaurant),
            ]),
            () => ListBuilder<BookingRestaurant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DailyMetricDTO)]),
            () => ListBuilder<DailyMetricDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(HourlyMetricDTO)]),
            () => ListBuilder<HourlyMetricDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(WeekdayMetricDTO)]),
            () => ListBuilder<WeekdayMetricDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(DishFilterSection),
            ]),
            () => ListBuilder<DishFilterSection>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(RatingImage)]),
            () => ListBuilder<RatingImage>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RatingImagePublic),
            ]),
            () => ListBuilder<RatingImagePublic>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RecommendationRestaurantAdmin),
            ]),
            () => ListBuilder<RecommendationRestaurantAdmin>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RecommendationRestaurantLinkRequest),
            ]),
            () => ListBuilder<RecommendationRestaurantLinkRequest>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RecommendationRestaurantPublic),
            ]),
            () => ListBuilder<RecommendationRestaurantPublic>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RecommendationSummary),
            ]),
            () => ListBuilder<RecommendationSummary>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RestaurantGroupWorkspaceRestaurant),
            ]),
            () => ListBuilder<RestaurantGroupWorkspaceRestaurant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TimeSlotDTO)]),
            () => ListBuilder<TimeSlotDTO>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(UserSecurityCapabilitiesAuthProvidersEnum),
            ]),
            () => ListBuilder<UserSecurityCapabilitiesAuthProvidersEnum>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(int)]),
            () => ListBuilder<int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(ComparisonDTO),
            ]),
            () => MapBuilder<String, ComparisonDTO>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
