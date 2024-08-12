import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_services_widget.dart' show CreateServicesWidget;
import 'package:flutter/material.dart';

class CreateServicesModel extends FlutterFlowModel<CreateServicesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  ServicesRecord? addingservice;
  // State field(s) for carwashName widget.
  FocusNode? carwashNameFocusNode;
  TextEditingController? carwashNameTextController;
  String? Function(BuildContext, String?)? carwashNameTextControllerValidator;
  String? _carwashNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for serviceName widget.
  FocusNode? serviceNameFocusNode;
  TextEditingController? serviceNameTextController;
  String? Function(BuildContext, String?)? serviceNameTextControllerValidator;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for oldPrice widget.
  FocusNode? oldPriceFocusNode;
  TextEditingController? oldPriceTextController;
  String? Function(BuildContext, String?)? oldPriceTextControllerValidator;
  // State field(s) for tuddzPrice widget.
  FocusNode? tuddzPriceFocusNode;
  TextEditingController? tuddzPriceTextController;
  String? Function(BuildContext, String?)? tuddzPriceTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    carwashNameTextControllerValidator = _carwashNameTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
  }

  @override
  void dispose() {
    carwashNameFocusNode?.dispose();
    carwashNameTextController?.dispose();

    serviceNameFocusNode?.dispose();
    serviceNameTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    oldPriceFocusNode?.dispose();
    oldPriceTextController?.dispose();

    tuddzPriceFocusNode?.dispose();
    tuddzPriceTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
