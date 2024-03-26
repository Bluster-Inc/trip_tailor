import 'package:trip_tailor/presentation/home_v1_skeleton_loading_screen/controller/home_v1_skeleton_loading_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeV1SkeletonLoadingScreen.
///
/// This class ensures that the HomeV1SkeletonLoadingController is created when the
/// HomeV1SkeletonLoadingScreen is first loaded.
class HomeV1SkeletonLoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeV1SkeletonLoadingController());
  }
}
