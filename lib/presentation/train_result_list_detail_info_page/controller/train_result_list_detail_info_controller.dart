import '../../../core/app_export.dart';
import '../models/train_result_list_detail_info_model.dart';

/// A controller class for the TrainResultListDetailInfoPage.
///
/// This class manages the state of the TrainResultListDetailInfoPage, including the
/// current trainResultListDetailInfoModelObj
class TrainResultListDetailInfoController extends GetxController {
  TrainResultListDetailInfoController(this.trainResultListDetailInfoModelObj);

  Rx<TrainResultListDetailInfoModel> trainResultListDetailInfoModelObj;
}
