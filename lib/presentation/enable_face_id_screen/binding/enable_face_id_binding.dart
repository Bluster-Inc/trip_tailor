import 'package:trip_tailor/presentation/enable_face_id_screen/controller/enable_face_id_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnableFaceIdScreen.
///
/// This class ensures that the EnableFaceIdController is created when the
/// EnableFaceIdScreen is first loaded.
class EnableFaceIdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnableFaceIdController());
  }
}
