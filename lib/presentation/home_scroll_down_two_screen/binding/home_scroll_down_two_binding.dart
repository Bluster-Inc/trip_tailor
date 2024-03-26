import 'package:trip_tailor/presentation/home_scroll_down_two_screen/controller/home_scroll_down_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeScrollDownTwoScreen.
///
/// This class ensures that the HomeScrollDownTwoController is created when the
/// HomeScrollDownTwoScreen is first loaded.
class HomeScrollDownTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScrollDownTwoController());
  }
}
