import '../../../core/app_export.dart';import '../models/hotel_list_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelListScreen.
///
/// This class manages the state of the HotelListScreen, including the
/// current hotelListModelObj
class HotelListController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HotelListModel> hotelListModelObj = HotelListModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
