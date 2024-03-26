import 'package:trip_tailor/presentation/search_empty_screen/controller/search_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchEmptyScreen.
///
/// This class ensures that the SearchEmptyController is created when the
/// SearchEmptyScreen is first loaded.
class SearchEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchEmptyController());
  }
}
