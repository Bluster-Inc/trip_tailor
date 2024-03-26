import 'package:trip_tailor/presentation/push_notifications_screen/controller/push_notifications_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PushNotificationsScreen.
///
/// This class ensures that the PushNotificationsController is created when the
/// PushNotificationsScreen is first loaded.
class PushNotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PushNotificationsController());
  }
}
