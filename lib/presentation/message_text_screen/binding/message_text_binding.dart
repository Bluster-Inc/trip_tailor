import 'package:trip_tailor/presentation/message_text_screen/controller/message_text_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageTextScreen.
///
/// This class ensures that the MessageTextController is created when the
/// MessageTextScreen is first loaded.
class MessageTextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageTextController());
  }
}
