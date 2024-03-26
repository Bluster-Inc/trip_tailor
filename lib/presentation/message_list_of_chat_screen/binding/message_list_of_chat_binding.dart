import 'package:trip_tailor/presentation/message_list_of_chat_screen/controller/message_list_of_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageListOfChatScreen.
///
/// This class ensures that the MessageListOfChatController is created when the
/// MessageListOfChatScreen is first loaded.
class MessageListOfChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageListOfChatController());
  }
}
