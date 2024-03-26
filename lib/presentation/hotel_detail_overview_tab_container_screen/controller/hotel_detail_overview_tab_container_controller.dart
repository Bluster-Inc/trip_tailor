import '../../../core/app_export.dart';import '../models/hotel_detail_overview_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelDetailOverviewTabContainerScreen.
///
/// This class manages the state of the HotelDetailOverviewTabContainerScreen, including the
/// current hotelDetailOverviewTabContainerModelObj
class HotelDetailOverviewTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<HotelDetailOverviewTabContainerModel> hotelDetailOverviewTabContainerModelObj = HotelDetailOverviewTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 5));

 }
