import 'package:trip_tailor/presentation/my_profile_edit_profile_screen/controller/my_profile_edit_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyProfileEditProfileScreen.
///
/// This class ensures that the MyProfileEditProfileController is created when the
/// MyProfileEditProfileScreen is first loaded.
class MyProfileEditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyProfileEditProfileController());
  }
}
