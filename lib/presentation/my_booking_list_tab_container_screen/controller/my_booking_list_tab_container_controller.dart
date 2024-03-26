import '../../../core/app_export.dart';import '../models/my_booking_list_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyBookingListTabContainerScreen.
///
/// This class manages the state of the MyBookingListTabContainerScreen, including the
/// current myBookingListTabContainerModelObj
class MyBookingListTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<MyBookingListTabContainerModel> myBookingListTabContainerModelObj = MyBookingListTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
