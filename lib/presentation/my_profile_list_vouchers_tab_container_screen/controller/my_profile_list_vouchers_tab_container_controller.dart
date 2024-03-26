import '../../../core/app_export.dart';import '../models/my_profile_list_vouchers_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyProfileListVouchersTabContainerScreen.
///
/// This class manages the state of the MyProfileListVouchersTabContainerScreen, including the
/// current myProfileListVouchersTabContainerModelObj
class MyProfileListVouchersTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<MyProfileListVouchersTabContainerModel> myProfileListVouchersTabContainerModelObj = MyProfileListVouchersTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
