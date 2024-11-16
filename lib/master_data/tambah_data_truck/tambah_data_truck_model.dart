import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_data_truck_widget.dart' show TambahDataTruckWidget;
import 'package:flutter/material.dart';

class TambahDataTruckModel extends FlutterFlowModel<TambahDataTruckWidget> {
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
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode4;
  TextEditingController? shipperTextController4;
  String? Function(BuildContext, String?)? shipperTextController4Validator;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode5;
  TextEditingController? shipperTextController5;
  String? Function(BuildContext, String?)? shipperTextController5Validator;

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

    shipperFocusNode4?.dispose();
    shipperTextController4?.dispose();

    shipperFocusNode5?.dispose();
    shipperTextController5?.dispose();
  }
}
