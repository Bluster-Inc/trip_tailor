import 'package:trip_tailor/presentation/message_text_attachment_screen/controller/message_text_attachment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageTextAttachmentScreen.
///
/// This class ensures that the MessageTextAttachmentController is created when the
/// MessageTextAttachmentScreen is first loaded.
class MessageTextAttachmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageTextAttachmentController());
  }
}
