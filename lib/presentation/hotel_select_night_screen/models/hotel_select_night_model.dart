import '../../../core/app_export.dart';import 'nightcounter_item_model.dart';/// This class defines the variables used in the [hotel_select_night_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelSelectNightModel {Rx<List<NightcounterItemModel>> nightcounterItemList = Rx([NightcounterItemModel(nightCounter: "1 Night".obs,title: "Checkout".obs,title1: "Tue, Aug 29".obs),NightcounterItemModel(nightCounter: "3 Night".obs,title: "Checkout".obs,title1: "Thu, Sep 01".obs),NightcounterItemModel(nightCounter: "4 Night".obs,title: "Checkout".obs,title1: "Fri, Sep 02".obs),NightcounterItemModel(nightCounter: "5 Night".obs,title: "Checkout".obs,title1: "Sat, Sep 03".obs)]);

 }
