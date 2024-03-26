import 'package:trip_tailor/presentation/home_vone_page/home_vone_page.dart';import 'package:trip_tailor/presentation/my_profile_page/my_profile_page.dart';import 'package:trip_tailor/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/home_vone_container_controller.dart';class HomeVoneContainerScreen extends GetWidget<HomeVoneContainerController> {const HomeVoneContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homeVonePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homeVonePage; case BottomBarEnum.Explore: return "/"; case BottomBarEnum.Booking: return "/"; case BottomBarEnum.Wishlist: return "/"; case BottomBarEnum.Profile: return AppRoutes.myProfilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homeVonePage: return HomeVonePage(); case AppRoutes.myProfilePage: return MyProfilePage(); default: return DefaultWidget();} } 
 }
