import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_services_widget.dart' show AddServicesWidget;
import 'package:flutter/material.dart';

class AddServicesModel extends FlutterFlowModel<AddServicesWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for carwashName widget.
  FocusNode? carwashNameFocusNode;
  TextEditingController? carwashNameTextController;
  String? Function(BuildContext, String?)? carwashNameTextControllerValidator;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for contactNum widget.
  FocusNode? contactNumFocusNode;
  TextEditingController? contactNumTextController;
  String? Function(BuildContext, String?)? contactNumTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for salesPrice widget.
  FocusNode? salesPriceFocusNode;
  TextEditingController? salesPriceTextController;
  String? Function(BuildContext, String?)? salesPriceTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ServicesRecord? servicesAddd;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    carwashNameFocusNode?.dispose();
    carwashNameTextController?.dispose();

    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    contactNumFocusNode?.dispose();
    contactNumTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    salesPriceFocusNode?.dispose();
    salesPriceTextController?.dispose();
  }
}
