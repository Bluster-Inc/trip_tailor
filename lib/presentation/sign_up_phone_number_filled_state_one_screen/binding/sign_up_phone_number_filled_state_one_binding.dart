import 'package:trip_tailor/presentation/sign_up_phone_number_filled_state_one_screen/controller/sign_up_phone_number_filled_state_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpPhoneNumberFilledStateOneScreen.
///
/// This class ensures that the SignUpPhoneNumberFilledStateOneController is created when the
/// SignUpPhoneNumberFilledStateOneScreen is first loaded.
class SignUpPhoneNumberFilledStateOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPhoneNumberFilledStateOneController());
  }
}
