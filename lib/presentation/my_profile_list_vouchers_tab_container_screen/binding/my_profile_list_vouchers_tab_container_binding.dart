import 'package:trip_tailor/presentation/my_profile_list_vouchers_tab_container_screen/controller/my_profile_list_vouchers_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyProfileListVouchersTabContainerScreen.
///
/// This class ensures that the MyProfileListVouchersTabContainerController is created when the
/// MyProfileListVouchersTabContainerScreen is first loaded.
class MyProfileListVouchersTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyProfileListVouchersTabContainerController());
  }
}
