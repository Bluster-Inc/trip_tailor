import 'package:trip_tailor/presentation/home_v2_skeleton_loading_screen/controller/home_v2_skeleton_loading_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeV2SkeletonLoadingScreen.
///
/// This class ensures that the HomeV2SkeletonLoadingController is created when the
/// HomeV2SkeletonLoadingScreen is first loaded.
class HomeV2SkeletonLoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeV2SkeletonLoadingController());
  }
}
