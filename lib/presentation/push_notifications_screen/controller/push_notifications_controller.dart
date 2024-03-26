import '../../../core/app_export.dart';import '../models/push_notifications_model.dart';/// A controller class for the PushNotificationsScreen.
///
/// This class manages the state of the PushNotificationsScreen, including the
/// current pushNotificationsModelObj
class PushNotificationsController extends GetxController {Rx<PushNotificationsModel> pushNotificationsModelObj = PushNotificationsModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

Rx<bool> isSelectedSwitch3 = false.obs;

Rx<bool> isSelectedSwitch4 = false.obs;

 }
