import 'link_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [link_account_payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LinkAccountPaymentMethodModel {Rx<List<LinkItemModel>> linkItemList = Rx([LinkItemModel(groupBy: "Digital payment method".obs),LinkItemModel(groupBy: "Digital payment method".obs),LinkItemModel(groupBy: "Digital payment method".obs),LinkItemModel(groupBy: "Bank Account".obs),LinkItemModel(groupBy: "Bank Account".obs)]);

 }
