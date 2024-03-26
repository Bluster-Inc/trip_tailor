import '../../../core/app_export.dart';
import '../models/attaraction_detail_description_model.dart';

/// A controller class for the AttaractionDetailDescriptionPage.
///
/// This class manages the state of the AttaractionDetailDescriptionPage, including the
/// current attaractionDetailDescriptionModelObj
class AttaractionDetailDescriptionController extends GetxController {
  AttaractionDetailDescriptionController(
      this.attaractionDetailDescriptionModelObj);

  Rx<AttaractionDetailDescriptionModel> attaractionDetailDescriptionModelObj;
}
