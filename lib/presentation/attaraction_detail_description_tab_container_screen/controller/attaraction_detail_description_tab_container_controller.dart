import '../../../core/app_export.dart';import '../models/attaraction_detail_description_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the AttaractionDetailDescriptionTabContainerScreen.
///
/// This class manages the state of the AttaractionDetailDescriptionTabContainerScreen, including the
/// current attaractionDetailDescriptionTabContainerModelObj
class AttaractionDetailDescriptionTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<AttaractionDetailDescriptionTabContainerModel> attaractionDetailDescriptionTabContainerModelObj = AttaractionDetailDescriptionTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 5));

 }
