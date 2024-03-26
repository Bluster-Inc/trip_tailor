import 'package:trip_tailor/presentation/success_state_new_password_screen/controller/success_state_new_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SuccessStateNewPasswordScreen.
///
/// This class ensures that the SuccessStateNewPasswordController is created when the
/// SuccessStateNewPasswordScreen is first loaded.
class SuccessStateNewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessStateNewPasswordController());
  }
}
