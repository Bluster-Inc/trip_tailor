import 'package:trip_tailor/presentation/message_search_screen/controller/message_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageSearchScreen.
///
/// This class ensures that the MessageSearchController is created when the
/// MessageSearchScreen is first loaded.
class MessageSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageSearchController());
  }
}
