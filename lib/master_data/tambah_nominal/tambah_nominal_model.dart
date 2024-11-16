import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_nominal_widget.dart' show TambahNominalWidget;
import 'package:flutter/material.dart';

class TambahNominalModel extends FlutterFlowModel<TambahNominalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode;
  TextEditingController? shipperTextController;
  String? Function(BuildContext, String?)? shipperTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shipperFocusNode?.dispose();
    shipperTextController?.dispose();
  }
}
