import 'package:trip_tailor/presentation/enable_fingerprint_screen/controller/enable_fingerprint_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnableFingerprintScreen.
///
/// This class ensures that the EnableFingerprintController is created when the
/// EnableFingerprintScreen is first loaded.
class EnableFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnableFingerprintController());
  }
}
