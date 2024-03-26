import '../../../core/app_export.dart';import '../models/message_list_of_chat_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageListOfChatScreen.
///
/// This class manages the state of the MessageListOfChatScreen, including the
/// current messageListOfChatModelObj
class MessageListOfChatController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<MessageListOfChatModel> messageListOfChatModelObj = MessageListOfChatModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
