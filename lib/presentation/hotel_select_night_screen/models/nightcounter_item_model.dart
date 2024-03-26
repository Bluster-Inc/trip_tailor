import '../../../core/app_export.dart';/// This class is used in the [nightcounter_item_widget] screen.
class NightcounterItemModel {NightcounterItemModel({this.nightCounter, this.title, this.title1, this.id, }) { nightCounter = nightCounter  ?? Rx("1 Night");title = title  ?? Rx("Checkout");title1 = title1  ?? Rx("Tue, Aug 29");id = id  ?? Rx(""); }

Rx<String>? nightCounter;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? id;

 }
