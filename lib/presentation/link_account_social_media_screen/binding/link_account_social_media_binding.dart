import 'package:trip_tailor/presentation/link_account_social_media_screen/controller/link_account_social_media_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LinkAccountSocialMediaScreen.
///
/// This class ensures that the LinkAccountSocialMediaController is created when the
/// LinkAccountSocialMediaScreen is first loaded.
class LinkAccountSocialMediaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkAccountSocialMediaController());
  }
}
