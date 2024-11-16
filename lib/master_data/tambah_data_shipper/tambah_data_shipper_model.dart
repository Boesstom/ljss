import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_data_shipper_widget.dart' show TambahDataShipperWidget;
import 'package:flutter/material.dart';

class TambahDataShipperModel extends FlutterFlowModel<TambahDataShipperWidget> {
  ///  Local state fields for this component.

  List<String> stuffingPlace = [];
  void addToStuffingPlace(String item) => stuffingPlace.add(item);
  void removeFromStuffingPlace(String item) => stuffingPlace.remove(item);
  void removeAtIndexFromStuffingPlace(int index) =>
      stuffingPlace.removeAt(index);
  void insertAtIndexInStuffingPlace(int index, String item) =>
      stuffingPlace.insert(index, item);
  void updateStuffingPlaceAtIndex(int index, Function(String) updateFn) =>
      stuffingPlace[index] = updateFn(stuffingPlace[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in TambahDataShipper widget.
  List<MdDataShipperRow>? shipper;
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
