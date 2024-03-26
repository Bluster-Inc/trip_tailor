import '../../../core/app_export.dart';import '../models/message_text_attachment_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageTextAttachmentScreen.
///
/// This class manages the state of the MessageTextAttachmentScreen, including the
/// current messageTextAttachmentModelObj
class MessageTextAttachmentController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<MessageTextAttachmentModel> messageTextAttachmentModelObj = MessageTextAttachmentModel().obs;

@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
