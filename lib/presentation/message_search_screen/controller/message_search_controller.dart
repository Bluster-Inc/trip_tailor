import '../../../core/app_export.dart';import '../models/message_search_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageSearchScreen.
///
/// This class manages the state of the MessageSearchScreen, including the
/// current messageSearchModelObj
class MessageSearchController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<MessageSearchModel> messageSearchModelObj = MessageSearchModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
