import '../../../core/app_export.dart';
import '../models/attaraction_detail_photos_model.dart';

/// A controller class for the AttaractionDetailPhotosPage.
///
/// This class manages the state of the AttaractionDetailPhotosPage, including the
/// current attaractionDetailPhotosModelObj
class AttaractionDetailPhotosController extends GetxController {
  AttaractionDetailPhotosController(this.attaractionDetailPhotosModelObj);

  Rx<AttaractionDetailPhotosModel> attaractionDetailPhotosModelObj;
}
