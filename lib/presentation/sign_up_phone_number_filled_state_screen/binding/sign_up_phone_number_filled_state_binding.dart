import 'package:trip_tailor/presentation/sign_up_phone_number_filled_state_screen/controller/sign_up_phone_number_filled_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpPhoneNumberFilledStateScreen.
///
/// This class ensures that the SignUpPhoneNumberFilledStateController is created when the
/// SignUpPhoneNumberFilledStateScreen is first loaded.
class SignUpPhoneNumberFilledStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPhoneNumberFilledStateController());
  }
}
