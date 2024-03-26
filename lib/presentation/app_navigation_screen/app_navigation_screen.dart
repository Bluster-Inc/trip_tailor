import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle:
                              "12. Sign Up - Phone Number - Filled State".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpPhoneNumberFilledStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "1. Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2. Onboarding - One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "3. Onboarding - Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "4. Onboarding - Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "5. Onboarding - Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "6. Onboarding - Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "7. Get Started".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.getStartedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "8. Login - Empty State".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginEmptyStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "9. Login - Filled State".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loginFilledStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "10. Sign Up - Email - Empty State ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpEmailEmptyStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "11. Sign Up - Email - Filled State".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpEmailFilledStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "12. Sign Up - Phone Number - Filled State One"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpPhoneNumberFilledStateOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "13. Enter - Verification Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.enterVerificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "14. Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "15. Success State - New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.successStateNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "16. Enable Face ID".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.enableFaceIdScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "17. Enable Fingerprint".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.enableFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "19. Home - V1 - Skeleton Loading".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeV1SkeletonLoadingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "20. Home - VOne - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeVoneContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "21. Home - V2 - Skeleton Loading".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeV2SkeletonLoadingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "22. Home - VTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeVtwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "23. Home - Scroll Down - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScrollDownOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "24. Home - Scroll Down - Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScrollDownTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "25. Search - Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "26. Search - History & Recomendation".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchHistoryRecomendationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "27. Search - Type Autocomplete".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchTypeAutocompleteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "28. Hotel - Form".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "29. Hotel - Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelSearchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "30. Hotel - Search - Type Autocomplete".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelSearchTypeAutocompleteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "31. Hotel - Select Date".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelSelectDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "32. Hotel - Select Night".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelSelectNightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "33. Hotel - Select Guest & Rooms".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelSelectGuestRoomsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "34. Hotel - Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "37. Hotel - List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "38. Hotel - List - Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelListFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "40. Hotel - Special Deals - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelSpecialDealsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "41. Hotel - Details - VOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelDetailsVoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "42. Hotel - Details - VTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelDetailsVtwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "43. Hotel - Detail - Overview - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelDetailOverviewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "45. Hotel - Detail - Coupons Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelDetailCouponsDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "47. Hotel - Detail Review View All".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelDetailReviewViewAllScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "48. Hotel - Detail - Facility".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelDetailFacilityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "49. Hotel - Detail - Map".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelDetailMapScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "51. Hotel - Select Room".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelSelectRoomScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "52. Hotel - Select Room - Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelSelectRoomDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "53. Hotel - Select Room - Detail Photos".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelSelectRoomDetailPhotosScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "54. Hotel - Booking - Step One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStepOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "55. Hotel - Booking - Step 1 - Contact Detail"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStep1ContactDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "56. Hotel - Booking - Step 1 - Add Special Request"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .hotelBookingStep1AddSpecialRequestScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "57. Hotel - Booking - Step 2 - Order Review".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStep2OrderReviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "58. Hotel - Booking - Step 2 - Scroll Down".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStep2ScrollDownScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "59. Hotel - Booking - Step 2 - Policies Details"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStep2PoliciesDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "60. Hotel - Booking - Step 3 - Payment".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStep3PaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "61. Hotel - Booking - Step 3 - Select Payment Method"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .hotelBookingStep3SelectPaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "62. Hotel - Booking - Step 3 - Add Coupon".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStep3AddCouponScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "63. Hotel - Booking - Step 4 - Voucher".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hotelBookingStep4VoucherScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "64. Flight Form - One Way - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightFormOneWayTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "67. Flight Form - Select Departure Date".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightFormSelectDepartureDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "70. Flight - Result List".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightResultListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "71.  Flight - List - Detail - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightListDetailTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "77. Flight - Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flightFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "78. Flight - Filter - Scroll Down".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightFilterScrollDownScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "80. Flight - Booking ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flightBookingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "81. Flight - Booking - Passenger Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightBookingPassengerDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "82. Flight - Booking - Travel Add-on".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightBookingTravelAddOnScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "83. Flight - Booking - Extra Protection".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightBookingExtraProtectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "86. Flight - Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flightPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "88. Flight - Payment - Select Payment".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightPaymentSelectPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "89. Flight - Payment - Apply Promo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightPaymentApplyPromoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "90. Flight - Payment - Pay Process".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightPaymentPayProcessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "91. Flight - Payment - Virtual Account".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightPaymentVirtualAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "92. Flight - Payment - Completed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flightPaymentCompletedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "93. Train - Form".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trainFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "94. Train - Search Stations".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainSearchStationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "95. Train - Select Date".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trainSelectDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "97. Train - Result List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trainResultListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "98. Train - Result List - Detail Journey - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .trainResultListDetailJourneyTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "100. Train - Booking".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trainBookingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "101. Train - Select Traveler Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainSelectTravelerDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "102. Train - Select Seat Number".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainSelectSeatNumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "104. Train - Select Travel & Extra Protection"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainSelectTravelExtraProtectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "106. Train - Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trainPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "107. Train - Payment - Select Payment".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainPaymentSelectPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "108. Train - Payment - Select Payment - Details"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainPaymentSelectPaymentDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "109. Train - Payment - Pay Process".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainPaymentPayProcessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "110. Train - Payment - Completed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trainPaymentCompletedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "111. Attaraction - All".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.attaractionAllScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "112. Attaraction - Search".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionSearchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "113. Attaraction - Search - Type".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionSearchTypeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "114. Attaraction - Select Location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionSelectLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "115. Attaraction - Filter".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "116. Attaraction - Select Date".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionSelectDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "117. Attaraction - Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "118. Attaraction - Detail - Description - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .attaractionDetailDescriptionTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "120. Attaraction - Detail - Location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionDetailLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "123. Attaraction - Order Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionOrderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "124. Attaraction - Order Details - Complete Booking"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .attaractionOrderDetailsCompleteBookingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "125. Attaraction - Payment".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "126. Attaraction - Payment Success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.attaractionPaymentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "127. My Booking - List - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.myBookingListTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "128. My Booking - List - Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.myBookingListDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "132. Wishlist".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wishlistScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "133. Wishlist - Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wishlistEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "137. Message - List of Chat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.messageListOfChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "139. Message - Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageSearchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "140. Message - Text".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageTextScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "141. Message - Text & Attachment".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.messageTextAttachmentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "142. Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "145. My Profile - Edit Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.myProfileEditProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "146. My Profile - List Vouchers - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .myProfileListVouchersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "147. Setting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "148. Link Account - Social Media".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.linkAccountSocialMediaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "149. Link Account - Payment Method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.linkAccountPaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "150. Link Account - Payment Method - Add New".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.linkAccountPaymentMethodAddNewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "151. Select Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectLanguageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "152. Push Notifications".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.pushNotificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "153. About Traveline".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutTravelineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "154. FAQ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "155. Privacy & Policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
