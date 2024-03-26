import 'package:trip_tailor/presentation/sign_up_email_filled_state_screen/controller/sign_up_email_filled_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpEmailFilledStateScreen.
///
/// This class ensures that the SignUpEmailFilledStateController is created when the
/// SignUpEmailFilledStateScreen is first loaded.
class SignUpEmailFilledStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpEmailFilledStateController());
  }
}
