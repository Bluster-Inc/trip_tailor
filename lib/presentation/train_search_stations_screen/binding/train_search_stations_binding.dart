import 'package:trip_tailor/presentation/train_search_stations_screen/controller/train_search_stations_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainSearchStationsScreen.
///
/// This class ensures that the TrainSearchStationsController is created when the
/// TrainSearchStationsScreen is first loaded.
class TrainSearchStationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainSearchStationsController());
  }
}
