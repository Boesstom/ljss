import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tambah_data_vendor_widget.dart' show TambahDataVendorWidget;
import 'package:flutter/material.dart';

class TambahDataVendorModel extends FlutterFlowModel<TambahDataVendorWidget> {
  ///  Local state fields for this component.

  bool dropdownAktif = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode1;
  TextEditingController? shipperTextController1;
  String? Function(BuildContext, String?)? shipperTextController1Validator;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode2;
  TextEditingController? shipperTextController2;
  String? Function(BuildContext, String?)? shipperTextController2Validator;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode3;
  TextEditingController? shipperTextController3;
  String? Function(BuildContext, String?)? shipperTextController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shipperFocusNode1?.dispose();
    shipperTextController1?.dispose();

    shipperFocusNode2?.dispose();
    shipperTextController2?.dispose();

    shipperFocusNode3?.dispose();
    shipperTextController3?.dispose();
  }
}
