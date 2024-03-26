import 'package:trip_tailor/presentation/login_filled_state_screen/controller/login_filled_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginFilledStateScreen.
///
/// This class ensures that the LoginFilledStateController is created when the
/// LoginFilledStateScreen is first loaded.
class LoginFilledStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginFilledStateController());
  }
}
