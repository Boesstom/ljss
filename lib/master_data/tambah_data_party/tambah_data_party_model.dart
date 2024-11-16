import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_data_party_widget.dart' show TambahDataPartyWidget;
import 'package:flutter/material.dart';

class TambahDataPartyModel extends FlutterFlowModel<TambahDataPartyWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shipperFocusNode1?.dispose();
    shipperTextController1?.dispose();

    shipperFocusNode2?.dispose();
    shipperTextController2?.dispose();
  }
}
