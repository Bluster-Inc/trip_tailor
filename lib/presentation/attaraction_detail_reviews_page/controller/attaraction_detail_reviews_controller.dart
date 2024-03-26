import '../../../core/app_export.dart';
import '../models/attaraction_detail_reviews_model.dart';

/// A controller class for the AttaractionDetailReviewsPage.
///
/// This class manages the state of the AttaractionDetailReviewsPage, including the
/// current attaractionDetailReviewsModelObj
class AttaractionDetailReviewsController extends GetxController {
  AttaractionDetailReviewsController(this.attaractionDetailReviewsModelObj);

  Rx<AttaractionDetailReviewsModel> attaractionDetailReviewsModelObj;
}
