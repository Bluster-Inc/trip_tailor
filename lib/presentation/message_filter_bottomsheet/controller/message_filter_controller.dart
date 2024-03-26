import '../../../core/app_export.dart';
import '../models/message_filter_model.dart';

/// A controller class for the MessageFilterBottomsheet.
///
/// This class manages the state of the MessageFilterBottomsheet, including the
/// current messageFilterModelObj
class MessageFilterController extends GetxController {
  Rx<MessageFilterModel> messageFilterModelObj = MessageFilterModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
