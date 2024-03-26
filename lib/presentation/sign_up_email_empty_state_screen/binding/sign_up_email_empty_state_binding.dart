import 'package:trip_tailor/presentation/sign_up_email_empty_state_screen/controller/sign_up_email_empty_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpEmailEmptyStateScreen.
///
/// This class ensures that the SignUpEmailEmptyStateController is created when the
/// SignUpEmailEmptyStateScreen is first loaded.
class SignUpEmailEmptyStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpEmailEmptyStateController());
  }
}
