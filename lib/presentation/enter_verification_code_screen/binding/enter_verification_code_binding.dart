import 'package:trip_tailor/presentation/enter_verification_code_screen/controller/enter_verification_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnterVerificationCodeScreen.
///
/// This class ensures that the EnterVerificationCodeController is created when the
/// EnterVerificationCodeScreen is first loaded.
class EnterVerificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterVerificationCodeController());
  }
}
