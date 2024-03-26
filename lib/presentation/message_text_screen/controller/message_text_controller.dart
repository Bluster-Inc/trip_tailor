import '../../../core/app_export.dart';import '../models/message_text_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageTextScreen.
///
/// This class manages the state of the MessageTextScreen, including the
/// current messageTextModelObj
class MessageTextController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<MessageTextModel> messageTextModelObj = MessageTextModel().obs;

@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
