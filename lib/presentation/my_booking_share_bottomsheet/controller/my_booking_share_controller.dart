import '../../../core/app_export.dart';import '../models/my_booking_share_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyBookingShareBottomsheet.
///
/// This class manages the state of the MyBookingShareBottomsheet, including the
/// current myBookingShareModelObj
class MyBookingShareController extends GetxController {TextEditingController copyController = TextEditingController();

TextEditingController copyController1 = TextEditingController();

TextEditingController copyController2 = TextEditingController();

TextEditingController copyController3 = TextEditingController();

Rx<MyBookingShareModel> myBookingShareModelObj = MyBookingShareModel().obs;

@override void onClose() { super.onClose(); copyController.dispose(); copyController1.dispose(); copyController2.dispose(); copyController3.dispose(); } 
 }
