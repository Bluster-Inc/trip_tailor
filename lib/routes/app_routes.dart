import 'package:get/get.dart';
import '../presentation/sign_up_phone_number_filled_state_screen/sign_up_phone_number_filled_state_screen.dart';
import '../presentation/sign_up_phone_number_filled_state_screen/binding/sign_up_phone_number_filled_state_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import '../presentation/onboarding_three_screen/onboarding_three_screen.dart';
import '../presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import '../presentation/onboarding_four_screen/onboarding_four_screen.dart';
import '../presentation/onboarding_four_screen/binding/onboarding_four_binding.dart';
import '../presentation/onboarding_five_screen/onboarding_five_screen.dart';
import '../presentation/onboarding_five_screen/binding/onboarding_five_binding.dart';
import '../presentation/get_started_screen/get_started_screen.dart';
import '../presentation/get_started_screen/binding/get_started_binding.dart';
import '../presentation/login_empty_state_screen/login_empty_state_screen.dart';
import '../presentation/login_empty_state_screen/binding/login_empty_state_binding.dart';
import '../presentation/login_filled_state_screen/login_filled_state_screen.dart';
import '../presentation/login_filled_state_screen/binding/login_filled_state_binding.dart';
import '../presentation/sign_up_email_empty_state_screen/sign_up_email_empty_state_screen.dart';
import '../presentation/sign_up_email_empty_state_screen/binding/sign_up_email_empty_state_binding.dart';
import '../presentation/sign_up_email_filled_state_screen/sign_up_email_filled_state_screen.dart';
import '../presentation/sign_up_email_filled_state_screen/binding/sign_up_email_filled_state_binding.dart';
import '../presentation/sign_up_phone_number_filled_state_one_screen/sign_up_phone_number_filled_state_one_screen.dart';
import '../presentation/sign_up_phone_number_filled_state_one_screen/binding/sign_up_phone_number_filled_state_one_binding.dart';
import '../presentation/enter_verification_code_screen/enter_verification_code_screen.dart';
import '../presentation/enter_verification_code_screen/binding/enter_verification_code_binding.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/success_state_new_password_screen/success_state_new_password_screen.dart';
import '../presentation/success_state_new_password_screen/binding/success_state_new_password_binding.dart';
import '../presentation/enable_face_id_screen/enable_face_id_screen.dart';
import '../presentation/enable_face_id_screen/binding/enable_face_id_binding.dart';
import '../presentation/enable_fingerprint_screen/enable_fingerprint_screen.dart';
import '../presentation/enable_fingerprint_screen/binding/enable_fingerprint_binding.dart';
import '../presentation/home_v1_skeleton_loading_screen/home_v1_skeleton_loading_screen.dart';
import '../presentation/home_v1_skeleton_loading_screen/binding/home_v1_skeleton_loading_binding.dart';
import '../presentation/home_vone_container_screen/home_vone_container_screen.dart';
import '../presentation/home_vone_container_screen/binding/home_vone_container_binding.dart';
import '../presentation/home_v2_skeleton_loading_screen/home_v2_skeleton_loading_screen.dart';
import '../presentation/home_v2_skeleton_loading_screen/binding/home_v2_skeleton_loading_binding.dart';
import '../presentation/home_vtwo_screen/home_vtwo_screen.dart';
import '../presentation/home_vtwo_screen/binding/home_vtwo_binding.dart';
import '../presentation/home_scroll_down_one_screen/home_scroll_down_one_screen.dart';
import '../presentation/home_scroll_down_one_screen/binding/home_scroll_down_one_binding.dart';
import '../presentation/home_scroll_down_two_screen/home_scroll_down_two_screen.dart';
import '../presentation/home_scroll_down_two_screen/binding/home_scroll_down_two_binding.dart';
import '../presentation/search_empty_screen/search_empty_screen.dart';
import '../presentation/search_empty_screen/binding/search_empty_binding.dart';
import '../presentation/search_history_recomendation_screen/search_history_recomendation_screen.dart';
import '../presentation/search_history_recomendation_screen/binding/search_history_recomendation_binding.dart';
import '../presentation/search_type_autocomplete_screen/search_type_autocomplete_screen.dart';
import '../presentation/search_type_autocomplete_screen/binding/search_type_autocomplete_binding.dart';
import '../presentation/hotel_form_screen/hotel_form_screen.dart';
import '../presentation/hotel_form_screen/binding/hotel_form_binding.dart';
import '../presentation/hotel_search_screen/hotel_search_screen.dart';
import '../presentation/hotel_search_screen/binding/hotel_search_binding.dart';
import '../presentation/hotel_search_type_autocomplete_screen/hotel_search_type_autocomplete_screen.dart';
import '../presentation/hotel_search_type_autocomplete_screen/binding/hotel_search_type_autocomplete_binding.dart';
import '../presentation/hotel_select_date_screen/hotel_select_date_screen.dart';
import '../presentation/hotel_select_date_screen/binding/hotel_select_date_binding.dart';
import '../presentation/hotel_select_night_screen/hotel_select_night_screen.dart';
import '../presentation/hotel_select_night_screen/binding/hotel_select_night_binding.dart';
import '../presentation/hotel_select_guest_rooms_screen/hotel_select_guest_rooms_screen.dart';
import '../presentation/hotel_select_guest_rooms_screen/binding/hotel_select_guest_rooms_binding.dart';
import '../presentation/hotel_filter_screen/hotel_filter_screen.dart';
import '../presentation/hotel_filter_screen/binding/hotel_filter_binding.dart';
import '../presentation/hotel_list_screen/hotel_list_screen.dart';
import '../presentation/hotel_list_screen/binding/hotel_list_binding.dart';
import '../presentation/hotel_list_filter_screen/hotel_list_filter_screen.dart';
import '../presentation/hotel_list_filter_screen/binding/hotel_list_filter_binding.dart';
import '../presentation/hotel_special_deals_tab_container_screen/hotel_special_deals_tab_container_screen.dart';
import '../presentation/hotel_special_deals_tab_container_screen/binding/hotel_special_deals_tab_container_binding.dart';
import '../presentation/hotel_details_vone_screen/hotel_details_vone_screen.dart';
import '../presentation/hotel_details_vone_screen/binding/hotel_details_vone_binding.dart';
import '../presentation/hotel_details_vtwo_screen/hotel_details_vtwo_screen.dart';
import '../presentation/hotel_details_vtwo_screen/binding/hotel_details_vtwo_binding.dart';
import '../presentation/hotel_detail_overview_tab_container_screen/hotel_detail_overview_tab_container_screen.dart';
import '../presentation/hotel_detail_overview_tab_container_screen/binding/hotel_detail_overview_tab_container_binding.dart';
import '../presentation/hotel_detail_coupons_details_screen/hotel_detail_coupons_details_screen.dart';
import '../presentation/hotel_detail_coupons_details_screen/binding/hotel_detail_coupons_details_binding.dart';
import '../presentation/hotel_detail_review_view_all_screen/hotel_detail_review_view_all_screen.dart';
import '../presentation/hotel_detail_review_view_all_screen/binding/hotel_detail_review_view_all_binding.dart';
import '../presentation/hotel_detail_facility_screen/hotel_detail_facility_screen.dart';
import '../presentation/hotel_detail_facility_screen/binding/hotel_detail_facility_binding.dart';
import '../presentation/hotel_detail_map_screen/hotel_detail_map_screen.dart';
import '../presentation/hotel_detail_map_screen/binding/hotel_detail_map_binding.dart';
import '../presentation/hotel_select_room_screen/hotel_select_room_screen.dart';
import '../presentation/hotel_select_room_screen/binding/hotel_select_room_binding.dart';
import '../presentation/hotel_select_room_detail_screen/hotel_select_room_detail_screen.dart';
import '../presentation/hotel_select_room_detail_screen/binding/hotel_select_room_detail_binding.dart';
import '../presentation/hotel_select_room_detail_photos_screen/hotel_select_room_detail_photos_screen.dart';
import '../presentation/hotel_select_room_detail_photos_screen/binding/hotel_select_room_detail_photos_binding.dart';
import '../presentation/hotel_booking_step_one_screen/hotel_booking_step_one_screen.dart';
import '../presentation/hotel_booking_step_one_screen/binding/hotel_booking_step_one_binding.dart';
import '../presentation/hotel_booking_step_1_contact_detail_screen/hotel_booking_step_1_contact_detail_screen.dart';
import '../presentation/hotel_booking_step_1_contact_detail_screen/binding/hotel_booking_step_1_contact_detail_binding.dart';
import '../presentation/hotel_booking_step_1_add_special_request_screen/hotel_booking_step_1_add_special_request_screen.dart';
import '../presentation/hotel_booking_step_1_add_special_request_screen/binding/hotel_booking_step_1_add_special_request_binding.dart';
import '../presentation/hotel_booking_step_2_order_review_screen/hotel_booking_step_2_order_review_screen.dart';
import '../presentation/hotel_booking_step_2_order_review_screen/binding/hotel_booking_step_2_order_review_binding.dart';
import '../presentation/hotel_booking_step_2_scroll_down_screen/hotel_booking_step_2_scroll_down_screen.dart';
import '../presentation/hotel_booking_step_2_scroll_down_screen/binding/hotel_booking_step_2_scroll_down_binding.dart';
import '../presentation/hotel_booking_step_2_policies_details_screen/hotel_booking_step_2_policies_details_screen.dart';
import '../presentation/hotel_booking_step_2_policies_details_screen/binding/hotel_booking_step_2_policies_details_binding.dart';
import '../presentation/hotel_booking_step_3_payment_screen/hotel_booking_step_3_payment_screen.dart';
import '../presentation/hotel_booking_step_3_payment_screen/binding/hotel_booking_step_3_payment_binding.dart';
import '../presentation/hotel_booking_step_3_select_payment_method_screen/hotel_booking_step_3_select_payment_method_screen.dart';
import '../presentation/hotel_booking_step_3_select_payment_method_screen/binding/hotel_booking_step_3_select_payment_method_binding.dart';
import '../presentation/hotel_booking_step_3_add_coupon_screen/hotel_booking_step_3_add_coupon_screen.dart';
import '../presentation/hotel_booking_step_3_add_coupon_screen/binding/hotel_booking_step_3_add_coupon_binding.dart';
import '../presentation/hotel_booking_step_4_voucher_screen/hotel_booking_step_4_voucher_screen.dart';
import '../presentation/hotel_booking_step_4_voucher_screen/binding/hotel_booking_step_4_voucher_binding.dart';
import '../presentation/flight_form_one_way_tab_container_screen/flight_form_one_way_tab_container_screen.dart';
import '../presentation/flight_form_one_way_tab_container_screen/binding/flight_form_one_way_tab_container_binding.dart';
import '../presentation/flight_form_select_departure_date_screen/flight_form_select_departure_date_screen.dart';
import '../presentation/flight_form_select_departure_date_screen/binding/flight_form_select_departure_date_binding.dart';
import '../presentation/flight_result_list_screen/flight_result_list_screen.dart';
import '../presentation/flight_result_list_screen/binding/flight_result_list_binding.dart';
import '../presentation/flight_list_detail_tab_container_screen/flight_list_detail_tab_container_screen.dart';
import '../presentation/flight_list_detail_tab_container_screen/binding/flight_list_detail_tab_container_binding.dart';
import '../presentation/flight_filter_screen/flight_filter_screen.dart';
import '../presentation/flight_filter_screen/binding/flight_filter_binding.dart';
import '../presentation/flight_filter_scroll_down_screen/flight_filter_scroll_down_screen.dart';
import '../presentation/flight_filter_scroll_down_screen/binding/flight_filter_scroll_down_binding.dart';
import '../presentation/flight_booking_screen/flight_booking_screen.dart';
import '../presentation/flight_booking_screen/binding/flight_booking_binding.dart';
import '../presentation/flight_booking_passenger_detail_screen/flight_booking_passenger_detail_screen.dart';
import '../presentation/flight_booking_passenger_detail_screen/binding/flight_booking_passenger_detail_binding.dart';
import '../presentation/flight_booking_travel_add_on_screen/flight_booking_travel_add_on_screen.dart';
import '../presentation/flight_booking_travel_add_on_screen/binding/flight_booking_travel_add_on_binding.dart';
import '../presentation/flight_booking_extra_protection_screen/flight_booking_extra_protection_screen.dart';
import '../presentation/flight_booking_extra_protection_screen/binding/flight_booking_extra_protection_binding.dart';
import '../presentation/flight_payment_screen/flight_payment_screen.dart';
import '../presentation/flight_payment_screen/binding/flight_payment_binding.dart';
import '../presentation/flight_payment_select_payment_screen/flight_payment_select_payment_screen.dart';
import '../presentation/flight_payment_select_payment_screen/binding/flight_payment_select_payment_binding.dart';
import '../presentation/flight_payment_apply_promo_screen/flight_payment_apply_promo_screen.dart';
import '../presentation/flight_payment_apply_promo_screen/binding/flight_payment_apply_promo_binding.dart';
import '../presentation/flight_payment_pay_process_screen/flight_payment_pay_process_screen.dart';
import '../presentation/flight_payment_pay_process_screen/binding/flight_payment_pay_process_binding.dart';
import '../presentation/flight_payment_virtual_account_screen/flight_payment_virtual_account_screen.dart';
import '../presentation/flight_payment_virtual_account_screen/binding/flight_payment_virtual_account_binding.dart';
import '../presentation/flight_payment_completed_screen/flight_payment_completed_screen.dart';
import '../presentation/flight_payment_completed_screen/binding/flight_payment_completed_binding.dart';
import '../presentation/train_form_screen/train_form_screen.dart';
import '../presentation/train_form_screen/binding/train_form_binding.dart';
import '../presentation/train_search_stations_screen/train_search_stations_screen.dart';
import '../presentation/train_search_stations_screen/binding/train_search_stations_binding.dart';
import '../presentation/train_select_date_screen/train_select_date_screen.dart';
import '../presentation/train_select_date_screen/binding/train_select_date_binding.dart';
import '../presentation/train_result_list_screen/train_result_list_screen.dart';
import '../presentation/train_result_list_screen/binding/train_result_list_binding.dart';
import '../presentation/train_result_list_detail_journey_tab_container_screen/train_result_list_detail_journey_tab_container_screen.dart';
import '../presentation/train_result_list_detail_journey_tab_container_screen/binding/train_result_list_detail_journey_tab_container_binding.dart';
import '../presentation/train_booking_screen/train_booking_screen.dart';
import '../presentation/train_booking_screen/binding/train_booking_binding.dart';
import '../presentation/train_select_traveler_details_screen/train_select_traveler_details_screen.dart';
import '../presentation/train_select_traveler_details_screen/binding/train_select_traveler_details_binding.dart';
import '../presentation/train_select_seat_number_screen/train_select_seat_number_screen.dart';
import '../presentation/train_select_seat_number_screen/binding/train_select_seat_number_binding.dart';
import '../presentation/train_select_travel_extra_protection_screen/train_select_travel_extra_protection_screen.dart';
import '../presentation/train_select_travel_extra_protection_screen/binding/train_select_travel_extra_protection_binding.dart';
import '../presentation/train_payment_screen/train_payment_screen.dart';
import '../presentation/train_payment_screen/binding/train_payment_binding.dart';
import '../presentation/train_payment_select_payment_screen/train_payment_select_payment_screen.dart';
import '../presentation/train_payment_select_payment_screen/binding/train_payment_select_payment_binding.dart';
import '../presentation/train_payment_select_payment_details_screen/train_payment_select_payment_details_screen.dart';
import '../presentation/train_payment_select_payment_details_screen/binding/train_payment_select_payment_details_binding.dart';
import '../presentation/train_payment_pay_process_screen/train_payment_pay_process_screen.dart';
import '../presentation/train_payment_pay_process_screen/binding/train_payment_pay_process_binding.dart';
import '../presentation/train_payment_completed_screen/train_payment_completed_screen.dart';
import '../presentation/train_payment_completed_screen/binding/train_payment_completed_binding.dart';
import '../presentation/attaraction_all_screen/attaraction_all_screen.dart';
import '../presentation/attaraction_all_screen/binding/attaraction_all_binding.dart';
import '../presentation/attaraction_search_screen/attaraction_search_screen.dart';
import '../presentation/attaraction_search_screen/binding/attaraction_search_binding.dart';
import '../presentation/attaraction_search_type_screen/attaraction_search_type_screen.dart';
import '../presentation/attaraction_search_type_screen/binding/attaraction_search_type_binding.dart';
import '../presentation/attaraction_select_location_screen/attaraction_select_location_screen.dart';
import '../presentation/attaraction_select_location_screen/binding/attaraction_select_location_binding.dart';
import '../presentation/attaraction_filter_screen/attaraction_filter_screen.dart';
import '../presentation/attaraction_filter_screen/binding/attaraction_filter_binding.dart';
import '../presentation/attaraction_select_date_screen/attaraction_select_date_screen.dart';
import '../presentation/attaraction_select_date_screen/binding/attaraction_select_date_binding.dart';
import '../presentation/attaraction_detail_screen/attaraction_detail_screen.dart';
import '../presentation/attaraction_detail_screen/binding/attaraction_detail_binding.dart';
import '../presentation/attaraction_detail_description_tab_container_screen/attaraction_detail_description_tab_container_screen.dart';
import '../presentation/attaraction_detail_description_tab_container_screen/binding/attaraction_detail_description_tab_container_binding.dart';
import '../presentation/attaraction_detail_location_screen/attaraction_detail_location_screen.dart';
import '../presentation/attaraction_detail_location_screen/binding/attaraction_detail_location_binding.dart';
import '../presentation/attaraction_order_details_screen/attaraction_order_details_screen.dart';
import '../presentation/attaraction_order_details_screen/binding/attaraction_order_details_binding.dart';
import '../presentation/attaraction_order_details_complete_booking_screen/attaraction_order_details_complete_booking_screen.dart';
import '../presentation/attaraction_order_details_complete_booking_screen/binding/attaraction_order_details_complete_booking_binding.dart';
import '../presentation/attaraction_payment_screen/attaraction_payment_screen.dart';
import '../presentation/attaraction_payment_screen/binding/attaraction_payment_binding.dart';
import '../presentation/attaraction_payment_success_screen/attaraction_payment_success_screen.dart';
import '../presentation/attaraction_payment_success_screen/binding/attaraction_payment_success_binding.dart';
import '../presentation/my_booking_list_tab_container_screen/my_booking_list_tab_container_screen.dart';
import '../presentation/my_booking_list_tab_container_screen/binding/my_booking_list_tab_container_binding.dart';
import '../presentation/my_booking_list_details_screen/my_booking_list_details_screen.dart';
import '../presentation/my_booking_list_details_screen/binding/my_booking_list_details_binding.dart';
import '../presentation/wishlist_screen/wishlist_screen.dart';
import '../presentation/wishlist_screen/binding/wishlist_binding.dart';
import '../presentation/wishlist_empty_screen/wishlist_empty_screen.dart';
import '../presentation/wishlist_empty_screen/binding/wishlist_empty_binding.dart';
import '../presentation/message_list_of_chat_screen/message_list_of_chat_screen.dart';
import '../presentation/message_list_of_chat_screen/binding/message_list_of_chat_binding.dart';
import '../presentation/message_search_screen/message_search_screen.dart';
import '../presentation/message_search_screen/binding/message_search_binding.dart';
import '../presentation/message_text_screen/message_text_screen.dart';
import '../presentation/message_text_screen/binding/message_text_binding.dart';
import '../presentation/message_text_attachment_screen/message_text_attachment_screen.dart';
import '../presentation/message_text_attachment_screen/binding/message_text_attachment_binding.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/notification_screen/binding/notification_binding.dart';
import '../presentation/my_profile_edit_profile_screen/my_profile_edit_profile_screen.dart';
import '../presentation/my_profile_edit_profile_screen/binding/my_profile_edit_profile_binding.dart';
import '../presentation/my_profile_list_vouchers_tab_container_screen/my_profile_list_vouchers_tab_container_screen.dart';
import '../presentation/my_profile_list_vouchers_tab_container_screen/binding/my_profile_list_vouchers_tab_container_binding.dart';
import '../presentation/setting_screen/setting_screen.dart';
import '../presentation/setting_screen/binding/setting_binding.dart';
import '../presentation/link_account_social_media_screen/link_account_social_media_screen.dart';
import '../presentation/link_account_social_media_screen/binding/link_account_social_media_binding.dart';
import '../presentation/link_account_payment_method_screen/link_account_payment_method_screen.dart';
import '../presentation/link_account_payment_method_screen/binding/link_account_payment_method_binding.dart';
import '../presentation/link_account_payment_method_add_new_screen/link_account_payment_method_add_new_screen.dart';
import '../presentation/link_account_payment_method_add_new_screen/binding/link_account_payment_method_add_new_binding.dart';
import '../presentation/select_language_screen/select_language_screen.dart';
import '../presentation/select_language_screen/binding/select_language_binding.dart';
import '../presentation/push_notifications_screen/push_notifications_screen.dart';
import '../presentation/push_notifications_screen/binding/push_notifications_binding.dart';
import '../presentation/about_traveline_screen/about_traveline_screen.dart';
import '../presentation/about_traveline_screen/binding/about_traveline_binding.dart';
import '../presentation/faq_screen/faq_screen.dart';
import '../presentation/faq_screen/binding/faq_binding.dart';
import '../presentation/privacy_policy_screen/privacy_policy_screen.dart';
import '../presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String signUpPhoneNumberFilledStateScreen =
      '/sign_up_phone_number_filled_state_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String loginEmptyStateScreen = '/login_empty_state_screen';

  static const String loginFilledStateScreen = '/login_filled_state_screen';

  static const String signUpEmailEmptyStateScreen =
      '/sign_up_email_empty_state_screen';

  static const String signUpEmailFilledStateScreen =
      '/sign_up_email_filled_state_screen';

  static const String signUpPhoneNumberFilledStateOneScreen =
      '/sign_up_phone_number_filled_state_one_screen';

  static const String enterVerificationCodeScreen =
      '/enter_verification_code_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String successStateNewPasswordScreen =
      '/success_state_new_password_screen';

  static const String enableFaceIdScreen = '/enable_face_id_screen';

  static const String enableFingerprintScreen = '/enable_fingerprint_screen';

  static const String homeV1SkeletonLoadingScreen =
      '/home_v1_skeleton_loading_screen';

  static const String homeVonePage = '/home_vone_page';

  static const String homeVoneContainerScreen = '/home_vone_container_screen';

  static const String homeV2SkeletonLoadingScreen =
      '/home_v2_skeleton_loading_screen';

  static const String homeVtwoScreen = '/home_vtwo_screen';

  static const String homeScrollDownOneScreen = '/home_scroll_down_one_screen';

  static const String homeScrollDownTwoScreen = '/home_scroll_down_two_screen';

  static const String searchEmptyScreen = '/search_empty_screen';

  static const String searchHistoryRecomendationScreen =
      '/search_history_recomendation_screen';

  static const String searchTypeAutocompleteScreen =
      '/search_type_autocomplete_screen';

  static const String hotelFormScreen = '/hotel_form_screen';

  static const String hotelSearchScreen = '/hotel_search_screen';

  static const String hotelSearchTypeAutocompleteScreen =
      '/hotel_search_type_autocomplete_screen';

  static const String hotelSelectDateScreen = '/hotel_select_date_screen';

  static const String hotelSelectNightScreen = '/hotel_select_night_screen';

  static const String hotelSelectGuestRoomsScreen =
      '/hotel_select_guest_rooms_screen';

  static const String hotelFilterScreen = '/hotel_filter_screen';

  static const String hotelListScreen = '/hotel_list_screen';

  static const String hotelListFilterScreen = '/hotel_list_filter_screen';

  static const String hotelSpecialDealsPage = '/hotel_special_deals_page';

  static const String hotelSpecialDealsTabContainerScreen =
      '/hotel_special_deals_tab_container_screen';

  static const String hotelDetailsVoneScreen = '/hotel_details_vone_screen';

  static const String hotelDetailsVtwoScreen = '/hotel_details_vtwo_screen';

  static const String hotelDetailOverviewPage = '/hotel_detail_overview_page';

  static const String hotelDetailOverviewTabContainerScreen =
      '/hotel_detail_overview_tab_container_screen';

  static const String hotelDetailCouponsPage = '/hotel_detail_coupons_page';

  static const String hotelDetailCouponsDetailsScreen =
      '/hotel_detail_coupons_details_screen';

  static const String hotelDetailReviewPage = '/hotel_detail_review_page';

  static const String hotelDetailReviewViewAllScreen =
      '/hotel_detail_review_view_all_screen';

  static const String hotelDetailFacilityScreen =
      '/hotel_detail_facility_screen';

  static const String hotelDetailMapScreen = '/hotel_detail_map_screen';

  static const String hotelSelectRoomScreen = '/hotel_select_room_screen';

  static const String hotelSelectRoomDetailScreen =
      '/hotel_select_room_detail_screen';

  static const String hotelSelectRoomDetailPhotosScreen =
      '/hotel_select_room_detail_photos_screen';

  static const String hotelBookingStepOneScreen =
      '/hotel_booking_step_one_screen';

  static const String hotelBookingStep1ContactDetailScreen =
      '/hotel_booking_step_1_contact_detail_screen';

  static const String hotelBookingStep1AddSpecialRequestScreen =
      '/hotel_booking_step_1_add_special_request_screen';

  static const String hotelBookingStep2OrderReviewScreen =
      '/hotel_booking_step_2_order_review_screen';

  static const String hotelBookingStep2ScrollDownScreen =
      '/hotel_booking_step_2_scroll_down_screen';

  static const String hotelBookingStep2PoliciesDetailsScreen =
      '/hotel_booking_step_2_policies_details_screen';

  static const String hotelBookingStep3PaymentScreen =
      '/hotel_booking_step_3_payment_screen';

  static const String hotelBookingStep3SelectPaymentMethodScreen =
      '/hotel_booking_step_3_select_payment_method_screen';

  static const String hotelBookingStep3AddCouponScreen =
      '/hotel_booking_step_3_add_coupon_screen';

  static const String hotelBookingStep4VoucherScreen =
      '/hotel_booking_step_4_voucher_screen';

  static const String flightFormOneWayPage = '/flight_form_one_way_page';

  static const String flightFormOneWayTabContainerScreen =
      '/flight_form_one_way_tab_container_screen';

  static const String flightFormMultiCityPage = '/flight_form_multi_city_page';

  static const String flightFormRoundTripPage = '/flight_form_round_trip_page';

  static const String flightFormSelectDepartureDateScreen =
      '/flight_form_select_departure_date_screen';

  static const String flightResultListScreen = '/flight_result_list_screen';

  static const String flightListDetailPage = '/flight_list_detail_page';

  static const String flightListDetailTabContainerScreen =
      '/flight_list_detail_tab_container_screen';

  static const String flightListDetailFareBenefitPage =
      '/flight_list_detail_fare_benefit_page';

  static const String flightListDetailRefundInfoPage =
      '/flight_list_detail_refund_info_page';

  static const String flightListDetailRescheduleInfoPage =
      '/flight_list_detail_reschedule_info_page';

  static const String flightFilterScreen = '/flight_filter_screen';

  static const String flightFilterScrollDownScreen =
      '/flight_filter_scroll_down_screen';

  static const String flightBookingScreen = '/flight_booking_screen';

  static const String flightBookingPassengerDetailScreen =
      '/flight_booking_passenger_detail_screen';

  static const String flightBookingTravelAddOnScreen =
      '/flight_booking_travel_add_on_screen';

  static const String flightBookingExtraProtectionScreen =
      '/flight_booking_extra_protection_screen';

  static const String flightPaymentScreen = '/flight_payment_screen';

  static const String flightPaymentSelectPaymentScreen =
      '/flight_payment_select_payment_screen';

  static const String flightPaymentApplyPromoScreen =
      '/flight_payment_apply_promo_screen';

  static const String flightPaymentPayProcessScreen =
      '/flight_payment_pay_process_screen';

  static const String flightPaymentVirtualAccountScreen =
      '/flight_payment_virtual_account_screen';

  static const String flightPaymentCompletedScreen =
      '/flight_payment_completed_screen';

  static const String trainFormScreen = '/train_form_screen';

  static const String trainSearchStationsScreen =
      '/train_search_stations_screen';

  static const String trainSelectDateScreen = '/train_select_date_screen';

  static const String trainResultListScreen = '/train_result_list_screen';

  static const String trainResultListDetailJourneyPage =
      '/train_result_list_detail_journey_page';

  static const String trainResultListDetailJourneyTabContainerScreen =
      '/train_result_list_detail_journey_tab_container_screen';

  static const String trainResultListDetailInfoPage =
      '/train_result_list_detail_info_page';

  static const String trainBookingScreen = '/train_booking_screen';

  static const String trainSelectTravelerDetailsScreen =
      '/train_select_traveler_details_screen';

  static const String trainSelectSeatNumberScreen =
      '/train_select_seat_number_screen';

  static const String trainSelectTravelExtraProtectionScreen =
      '/train_select_travel_extra_protection_screen';

  static const String trainPaymentScreen = '/train_payment_screen';

  static const String trainPaymentSelectPaymentScreen =
      '/train_payment_select_payment_screen';

  static const String trainPaymentSelectPaymentDetailsScreen =
      '/train_payment_select_payment_details_screen';

  static const String trainPaymentPayProcessScreen =
      '/train_payment_pay_process_screen';

  static const String trainPaymentCompletedScreen =
      '/train_payment_completed_screen';

  static const String attaractionAllScreen = '/attaraction_all_screen';

  static const String attaractionSearchScreen = '/attaraction_search_screen';

  static const String attaractionSearchTypeScreen =
      '/attaraction_search_type_screen';

  static const String attaractionSelectLocationScreen =
      '/attaraction_select_location_screen';

  static const String attaractionFilterScreen = '/attaraction_filter_screen';

  static const String attaractionSelectDateScreen =
      '/attaraction_select_date_screen';

  static const String attaractionDetailScreen = '/attaraction_detail_screen';

  static const String attaractionDetailDescriptionPage =
      '/attaraction_detail_description_page';

  static const String attaractionDetailDescriptionTabContainerScreen =
      '/attaraction_detail_description_tab_container_screen';

  static const String attaractionDetailReviewsPage =
      '/attaraction_detail_reviews_page';

  static const String attaractionDetailLocationScreen =
      '/attaraction_detail_location_screen';

  static const String attaractionDetailPhotosPage =
      '/attaraction_detail_photos_page';

  static const String attaractionDetailPackagesPage =
      '/attaraction_detail_packages_page';

  static const String attaractionOrderDetailsScreen =
      '/attaraction_order_details_screen';

  static const String attaractionOrderDetailsCompleteBookingScreen =
      '/attaraction_order_details_complete_booking_screen';

  static const String attaractionPaymentScreen = '/attaraction_payment_screen';

  static const String attaractionPaymentSuccessScreen =
      '/attaraction_payment_success_screen';

  static const String myBookingListPage = '/my_booking_list_page';

  static const String myBookingListTabContainerScreen =
      '/my_booking_list_tab_container_screen';

  static const String myBookingListDetailsScreen =
      '/my_booking_list_details_screen';

  static const String myBookingEmptyPage = '/my_booking_empty_page';

  static const String wishlistScreen = '/wishlist_screen';

  static const String wishlistEmptyScreen = '/wishlist_empty_screen';

  static const String messageListOfChatScreen = '/message_list_of_chat_screen';

  static const String messageSearchScreen = '/message_search_screen';

  static const String messageTextScreen = '/message_text_screen';

  static const String messageTextAttachmentScreen =
      '/message_text_attachment_screen';

  static const String notificationScreen = '/notification_screen';

  static const String myProfilePage = '/my_profile_page';

  static const String myProfileEditProfileScreen =
      '/my_profile_edit_profile_screen';

  static const String myProfileListVouchersPage =
      '/my_profile_list_vouchers_page';

  static const String myProfileListVouchersTabContainerScreen =
      '/my_profile_list_vouchers_tab_container_screen';

  static const String settingScreen = '/setting_screen';

  static const String linkAccountSocialMediaScreen =
      '/link_account_social_media_screen';

  static const String linkAccountPaymentMethodScreen =
      '/link_account_payment_method_screen';

  static const String linkAccountPaymentMethodAddNewScreen =
      '/link_account_payment_method_add_new_screen';

  static const String selectLanguageScreen = '/select_language_screen';

  static const String pushNotificationsScreen = '/push_notifications_screen';

  static const String aboutTravelineScreen = '/about_traveline_screen';

  static const String faqScreen = '/faq_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpPhoneNumberFilledStateScreen,
      page: () => SignUpPhoneNumberFilledStateScreen(),
      bindings: [
        SignUpPhoneNumberFilledStateBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: onboardingFourScreen,
      page: () => OnboardingFourScreen(),
      bindings: [
        OnboardingFourBinding(),
      ],
    ),
    GetPage(
      name: onboardingFiveScreen,
      page: () => OnboardingFiveScreen(),
      bindings: [
        OnboardingFiveBinding(),
      ],
    ),
    GetPage(
      name: getStartedScreen,
      page: () => GetStartedScreen(),
      bindings: [
        GetStartedBinding(),
      ],
    ),
    GetPage(
      name: loginEmptyStateScreen,
      page: () => LoginEmptyStateScreen(),
      bindings: [
        LoginEmptyStateBinding(),
      ],
    ),
    GetPage(
      name: loginFilledStateScreen,
      page: () => LoginFilledStateScreen(),
      bindings: [
        LoginFilledStateBinding(),
      ],
    ),
    GetPage(
      name: signUpEmailEmptyStateScreen,
      page: () => SignUpEmailEmptyStateScreen(),
      bindings: [
        SignUpEmailEmptyStateBinding(),
      ],
    ),
    GetPage(
      name: signUpEmailFilledStateScreen,
      page: () => SignUpEmailFilledStateScreen(),
      bindings: [
        SignUpEmailFilledStateBinding(),
      ],
    ),
    GetPage(
      name: signUpPhoneNumberFilledStateOneScreen,
      page: () => SignUpPhoneNumberFilledStateOneScreen(),
      bindings: [
        SignUpPhoneNumberFilledStateOneBinding(),
      ],
    ),
    GetPage(
      name: enterVerificationCodeScreen,
      page: () => EnterVerificationCodeScreen(),
      bindings: [
        EnterVerificationCodeBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: successStateNewPasswordScreen,
      page: () => SuccessStateNewPasswordScreen(),
      bindings: [
        SuccessStateNewPasswordBinding(),
      ],
    ),
    GetPage(
      name: enableFaceIdScreen,
      page: () => EnableFaceIdScreen(),
      bindings: [
        EnableFaceIdBinding(),
      ],
    ),
    GetPage(
      name: enableFingerprintScreen,
      page: () => EnableFingerprintScreen(),
      bindings: [
        EnableFingerprintBinding(),
      ],
    ),
    GetPage(
      name: homeV1SkeletonLoadingScreen,
      page: () => HomeV1SkeletonLoadingScreen(),
      bindings: [
        HomeV1SkeletonLoadingBinding(),
      ],
    ),
    GetPage(
      name: homeVoneContainerScreen,
      page: () => HomeVoneContainerScreen(),
      bindings: [
        HomeVoneContainerBinding(),
      ],
    ),
    GetPage(
      name: homeV2SkeletonLoadingScreen,
      page: () => HomeV2SkeletonLoadingScreen(),
      bindings: [
        HomeV2SkeletonLoadingBinding(),
      ],
    ),
    GetPage(
      name: homeVtwoScreen,
      page: () => HomeVtwoScreen(),
      bindings: [
        HomeVtwoBinding(),
      ],
    ),
    GetPage(
      name: homeScrollDownOneScreen,
      page: () => HomeScrollDownOneScreen(),
      bindings: [
        HomeScrollDownOneBinding(),
      ],
    ),
    GetPage(
      name: homeScrollDownTwoScreen,
      page: () => HomeScrollDownTwoScreen(),
      bindings: [
        HomeScrollDownTwoBinding(),
      ],
    ),
    GetPage(
      name: searchEmptyScreen,
      page: () => SearchEmptyScreen(),
      bindings: [
        SearchEmptyBinding(),
      ],
    ),
    GetPage(
      name: searchHistoryRecomendationScreen,
      page: () => SearchHistoryRecomendationScreen(),
      bindings: [
        SearchHistoryRecomendationBinding(),
      ],
    ),
    GetPage(
      name: searchTypeAutocompleteScreen,
      page: () => SearchTypeAutocompleteScreen(),
      bindings: [
        SearchTypeAutocompleteBinding(),
      ],
    ),
    GetPage(
      name: hotelFormScreen,
      page: () => HotelFormScreen(),
      bindings: [
        HotelFormBinding(),
      ],
    ),
    GetPage(
      name: hotelSearchScreen,
      page: () => HotelSearchScreen(),
      bindings: [
        HotelSearchBinding(),
      ],
    ),
    GetPage(
      name: hotelSearchTypeAutocompleteScreen,
      page: () => HotelSearchTypeAutocompleteScreen(),
      bindings: [
        HotelSearchTypeAutocompleteBinding(),
      ],
    ),
    GetPage(
      name: hotelSelectDateScreen,
      page: () => HotelSelectDateScreen(),
      bindings: [
        HotelSelectDateBinding(),
      ],
    ),
    GetPage(
      name: hotelSelectNightScreen,
      page: () => HotelSelectNightScreen(),
      bindings: [
        HotelSelectNightBinding(),
      ],
    ),
    GetPage(
      name: hotelSelectGuestRoomsScreen,
      page: () => HotelSelectGuestRoomsScreen(),
      bindings: [
        HotelSelectGuestRoomsBinding(),
      ],
    ),
    GetPage(
      name: hotelFilterScreen,
      page: () => HotelFilterScreen(),
      bindings: [
        HotelFilterBinding(),
      ],
    ),
    GetPage(
      name: hotelListScreen,
      page: () => HotelListScreen(),
      bindings: [
        HotelListBinding(),
      ],
    ),
    GetPage(
      name: hotelListFilterScreen,
      page: () => HotelListFilterScreen(),
      bindings: [
        HotelListFilterBinding(),
      ],
    ),
    GetPage(
      name: hotelSpecialDealsTabContainerScreen,
      page: () => HotelSpecialDealsTabContainerScreen(),
      bindings: [
        HotelSpecialDealsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailsVoneScreen,
      page: () => HotelDetailsVoneScreen(),
      bindings: [
        HotelDetailsVoneBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailsVtwoScreen,
      page: () => HotelDetailsVtwoScreen(),
      bindings: [
        HotelDetailsVtwoBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailOverviewTabContainerScreen,
      page: () => HotelDetailOverviewTabContainerScreen(),
      bindings: [
        HotelDetailOverviewTabContainerBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailCouponsDetailsScreen,
      page: () => HotelDetailCouponsDetailsScreen(),
      bindings: [
        HotelDetailCouponsDetailsBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailReviewViewAllScreen,
      page: () => HotelDetailReviewViewAllScreen(),
      bindings: [
        HotelDetailReviewViewAllBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailFacilityScreen,
      page: () => HotelDetailFacilityScreen(),
      bindings: [
        HotelDetailFacilityBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailMapScreen,
      page: () => HotelDetailMapScreen(),
      bindings: [
        HotelDetailMapBinding(),
      ],
    ),
    GetPage(
      name: hotelSelectRoomScreen,
      page: () => HotelSelectRoomScreen(),
      bindings: [
        HotelSelectRoomBinding(),
      ],
    ),
    GetPage(
      name: hotelSelectRoomDetailScreen,
      page: () => HotelSelectRoomDetailScreen(),
      bindings: [
        HotelSelectRoomDetailBinding(),
      ],
    ),
    GetPage(
      name: hotelSelectRoomDetailPhotosScreen,
      page: () => HotelSelectRoomDetailPhotosScreen(),
      bindings: [
        HotelSelectRoomDetailPhotosBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStepOneScreen,
      page: () => HotelBookingStepOneScreen(),
      bindings: [
        HotelBookingStepOneBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep1ContactDetailScreen,
      page: () => HotelBookingStep1ContactDetailScreen(),
      bindings: [
        HotelBookingStep1ContactDetailBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep1AddSpecialRequestScreen,
      page: () => HotelBookingStep1AddSpecialRequestScreen(),
      bindings: [
        HotelBookingStep1AddSpecialRequestBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep2OrderReviewScreen,
      page: () => HotelBookingStep2OrderReviewScreen(),
      bindings: [
        HotelBookingStep2OrderReviewBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep2ScrollDownScreen,
      page: () => HotelBookingStep2ScrollDownScreen(),
      bindings: [
        HotelBookingStep2ScrollDownBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep2PoliciesDetailsScreen,
      page: () => HotelBookingStep2PoliciesDetailsScreen(),
      bindings: [
        HotelBookingStep2PoliciesDetailsBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep3PaymentScreen,
      page: () => HotelBookingStep3PaymentScreen(),
      bindings: [
        HotelBookingStep3PaymentBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep3SelectPaymentMethodScreen,
      page: () => HotelBookingStep3SelectPaymentMethodScreen(),
      bindings: [
        HotelBookingStep3SelectPaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep3AddCouponScreen,
      page: () => HotelBookingStep3AddCouponScreen(),
      bindings: [
        HotelBookingStep3AddCouponBinding(),
      ],
    ),
    GetPage(
      name: hotelBookingStep4VoucherScreen,
      page: () => HotelBookingStep4VoucherScreen(),
      bindings: [
        HotelBookingStep4VoucherBinding(),
      ],
    ),
    GetPage(
      name: flightFormOneWayTabContainerScreen,
      page: () => FlightFormOneWayTabContainerScreen(),
      bindings: [
        FlightFormOneWayTabContainerBinding(),
      ],
    ),
    GetPage(
      name: flightFormSelectDepartureDateScreen,
      page: () => FlightFormSelectDepartureDateScreen(),
      bindings: [
        FlightFormSelectDepartureDateBinding(),
      ],
    ),
    GetPage(
      name: flightResultListScreen,
      page: () => FlightResultListScreen(),
      bindings: [
        FlightResultListBinding(),
      ],
    ),
    GetPage(
      name: flightListDetailTabContainerScreen,
      page: () => FlightListDetailTabContainerScreen(),
      bindings: [
        FlightListDetailTabContainerBinding(),
      ],
    ),
    GetPage(
      name: flightFilterScreen,
      page: () => FlightFilterScreen(),
      bindings: [
        FlightFilterBinding(),
      ],
    ),
    GetPage(
      name: flightFilterScrollDownScreen,
      page: () => FlightFilterScrollDownScreen(),
      bindings: [
        FlightFilterScrollDownBinding(),
      ],
    ),
    GetPage(
      name: flightBookingScreen,
      page: () => FlightBookingScreen(),
      bindings: [
        FlightBookingBinding(),
      ],
    ),
    GetPage(
      name: flightBookingPassengerDetailScreen,
      page: () => FlightBookingPassengerDetailScreen(),
      bindings: [
        FlightBookingPassengerDetailBinding(),
      ],
    ),
    GetPage(
      name: flightBookingTravelAddOnScreen,
      page: () => FlightBookingTravelAddOnScreen(),
      bindings: [
        FlightBookingTravelAddOnBinding(),
      ],
    ),
    GetPage(
      name: flightBookingExtraProtectionScreen,
      page: () => FlightBookingExtraProtectionScreen(),
      bindings: [
        FlightBookingExtraProtectionBinding(),
      ],
    ),
    GetPage(
      name: flightPaymentScreen,
      page: () => FlightPaymentScreen(),
      bindings: [
        FlightPaymentBinding(),
      ],
    ),
    GetPage(
      name: flightPaymentSelectPaymentScreen,
      page: () => FlightPaymentSelectPaymentScreen(),
      bindings: [
        FlightPaymentSelectPaymentBinding(),
      ],
    ),
    GetPage(
      name: flightPaymentApplyPromoScreen,
      page: () => FlightPaymentApplyPromoScreen(),
      bindings: [
        FlightPaymentApplyPromoBinding(),
      ],
    ),
    GetPage(
      name: flightPaymentPayProcessScreen,
      page: () => FlightPaymentPayProcessScreen(),
      bindings: [
        FlightPaymentPayProcessBinding(),
      ],
    ),
    GetPage(
      name: flightPaymentVirtualAccountScreen,
      page: () => FlightPaymentVirtualAccountScreen(),
      bindings: [
        FlightPaymentVirtualAccountBinding(),
      ],
    ),
    GetPage(
      name: flightPaymentCompletedScreen,
      page: () => FlightPaymentCompletedScreen(),
      bindings: [
        FlightPaymentCompletedBinding(),
      ],
    ),
    GetPage(
      name: trainFormScreen,
      page: () => TrainFormScreen(),
      bindings: [
        TrainFormBinding(),
      ],
    ),
    GetPage(
      name: trainSearchStationsScreen,
      page: () => TrainSearchStationsScreen(),
      bindings: [
        TrainSearchStationsBinding(),
      ],
    ),
    GetPage(
      name: trainSelectDateScreen,
      page: () => TrainSelectDateScreen(),
      bindings: [
        TrainSelectDateBinding(),
      ],
    ),
    GetPage(
      name: trainResultListScreen,
      page: () => TrainResultListScreen(),
      bindings: [
        TrainResultListBinding(),
      ],
    ),
    GetPage(
      name: trainResultListDetailJourneyTabContainerScreen,
      page: () => TrainResultListDetailJourneyTabContainerScreen(),
      bindings: [
        TrainResultListDetailJourneyTabContainerBinding(),
      ],
    ),
    GetPage(
      name: trainBookingScreen,
      page: () => TrainBookingScreen(),
      bindings: [
        TrainBookingBinding(),
      ],
    ),
    GetPage(
      name: trainSelectTravelerDetailsScreen,
      page: () => TrainSelectTravelerDetailsScreen(),
      bindings: [
        TrainSelectTravelerDetailsBinding(),
      ],
    ),
    GetPage(
      name: trainSelectSeatNumberScreen,
      page: () => TrainSelectSeatNumberScreen(),
      bindings: [
        TrainSelectSeatNumberBinding(),
      ],
    ),
    GetPage(
      name: trainSelectTravelExtraProtectionScreen,
      page: () => TrainSelectTravelExtraProtectionScreen(),
      bindings: [
        TrainSelectTravelExtraProtectionBinding(),
      ],
    ),
    GetPage(
      name: trainPaymentScreen,
      page: () => TrainPaymentScreen(),
      bindings: [
        TrainPaymentBinding(),
      ],
    ),
    GetPage(
      name: trainPaymentSelectPaymentScreen,
      page: () => TrainPaymentSelectPaymentScreen(),
      bindings: [
        TrainPaymentSelectPaymentBinding(),
      ],
    ),
    GetPage(
      name: trainPaymentSelectPaymentDetailsScreen,
      page: () => TrainPaymentSelectPaymentDetailsScreen(),
      bindings: [
        TrainPaymentSelectPaymentDetailsBinding(),
      ],
    ),
    GetPage(
      name: trainPaymentPayProcessScreen,
      page: () => TrainPaymentPayProcessScreen(),
      bindings: [
        TrainPaymentPayProcessBinding(),
      ],
    ),
    GetPage(
      name: trainPaymentCompletedScreen,
      page: () => TrainPaymentCompletedScreen(),
      bindings: [
        TrainPaymentCompletedBinding(),
      ],
    ),
    GetPage(
      name: attaractionAllScreen,
      page: () => AttaractionAllScreen(),
      bindings: [
        AttaractionAllBinding(),
      ],
    ),
    GetPage(
      name: attaractionSearchScreen,
      page: () => AttaractionSearchScreen(),
      bindings: [
        AttaractionSearchBinding(),
      ],
    ),
    GetPage(
      name: attaractionSearchTypeScreen,
      page: () => AttaractionSearchTypeScreen(),
      bindings: [
        AttaractionSearchTypeBinding(),
      ],
    ),
    GetPage(
      name: attaractionSelectLocationScreen,
      page: () => AttaractionSelectLocationScreen(),
      bindings: [
        AttaractionSelectLocationBinding(),
      ],
    ),
    GetPage(
      name: attaractionFilterScreen,
      page: () => AttaractionFilterScreen(),
      bindings: [
        AttaractionFilterBinding(),
      ],
    ),
    GetPage(
      name: attaractionSelectDateScreen,
      page: () => AttaractionSelectDateScreen(),
      bindings: [
        AttaractionSelectDateBinding(),
      ],
    ),
    GetPage(
      name: attaractionDetailScreen,
      page: () => AttaractionDetailScreen(),
      bindings: [
        AttaractionDetailBinding(),
      ],
    ),
    GetPage(
      name: attaractionDetailDescriptionTabContainerScreen,
      page: () => AttaractionDetailDescriptionTabContainerScreen(),
      bindings: [
        AttaractionDetailDescriptionTabContainerBinding(),
      ],
    ),
    GetPage(
      name: attaractionDetailLocationScreen,
      page: () => AttaractionDetailLocationScreen(),
      bindings: [
        AttaractionDetailLocationBinding(),
      ],
    ),
    GetPage(
      name: attaractionOrderDetailsScreen,
      page: () => AttaractionOrderDetailsScreen(),
      bindings: [
        AttaractionOrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: attaractionOrderDetailsCompleteBookingScreen,
      page: () => AttaractionOrderDetailsCompleteBookingScreen(),
      bindings: [
        AttaractionOrderDetailsCompleteBookingBinding(),
      ],
    ),
    GetPage(
      name: attaractionPaymentScreen,
      page: () => AttaractionPaymentScreen(),
      bindings: [
        AttaractionPaymentBinding(),
      ],
    ),
    GetPage(
      name: attaractionPaymentSuccessScreen,
      page: () => AttaractionPaymentSuccessScreen(),
      bindings: [
        AttaractionPaymentSuccessBinding(),
      ],
    ),
    GetPage(
      name: myBookingListTabContainerScreen,
      page: () => MyBookingListTabContainerScreen(),
      bindings: [
        MyBookingListTabContainerBinding(),
      ],
    ),
    GetPage(
      name: myBookingListDetailsScreen,
      page: () => MyBookingListDetailsScreen(),
      bindings: [
        MyBookingListDetailsBinding(),
      ],
    ),
    GetPage(
      name: wishlistScreen,
      page: () => WishlistScreen(),
      bindings: [
        WishlistBinding(),
      ],
    ),
    GetPage(
      name: wishlistEmptyScreen,
      page: () => WishlistEmptyScreen(),
      bindings: [
        WishlistEmptyBinding(),
      ],
    ),
    GetPage(
      name: messageListOfChatScreen,
      page: () => MessageListOfChatScreen(),
      bindings: [
        MessageListOfChatBinding(),
      ],
    ),
    GetPage(
      name: messageSearchScreen,
      page: () => MessageSearchScreen(),
      bindings: [
        MessageSearchBinding(),
      ],
    ),
    GetPage(
      name: messageTextScreen,
      page: () => MessageTextScreen(),
      bindings: [
        MessageTextBinding(),
      ],
    ),
    GetPage(
      name: messageTextAttachmentScreen,
      page: () => MessageTextAttachmentScreen(),
      bindings: [
        MessageTextAttachmentBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: myProfileEditProfileScreen,
      page: () => MyProfileEditProfileScreen(),
      bindings: [
        MyProfileEditProfileBinding(),
      ],
    ),
    GetPage(
      name: myProfileListVouchersTabContainerScreen,
      page: () => MyProfileListVouchersTabContainerScreen(),
      bindings: [
        MyProfileListVouchersTabContainerBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: linkAccountSocialMediaScreen,
      page: () => LinkAccountSocialMediaScreen(),
      bindings: [
        LinkAccountSocialMediaBinding(),
      ],
    ),
    GetPage(
      name: linkAccountPaymentMethodScreen,
      page: () => LinkAccountPaymentMethodScreen(),
      bindings: [
        LinkAccountPaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: linkAccountPaymentMethodAddNewScreen,
      page: () => LinkAccountPaymentMethodAddNewScreen(),
      bindings: [
        LinkAccountPaymentMethodAddNewBinding(),
      ],
    ),
    GetPage(
      name: selectLanguageScreen,
      page: () => SelectLanguageScreen(),
      bindings: [
        SelectLanguageBinding(),
      ],
    ),
    GetPage(
      name: pushNotificationsScreen,
      page: () => PushNotificationsScreen(),
      bindings: [
        PushNotificationsBinding(),
      ],
    ),
    GetPage(
      name: aboutTravelineScreen,
      page: () => AboutTravelineScreen(),
      bindings: [
        AboutTravelineBinding(),
      ],
    ),
    GetPage(
      name: faqScreen,
      page: () => FaqScreen(),
      bindings: [
        FaqBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    )
  ];
}
