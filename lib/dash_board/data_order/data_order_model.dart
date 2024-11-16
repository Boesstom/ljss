import '/backend/schema/structs/index.dart';
import '/components/search_widget.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'data_order_widget.dart' show DataOrderWidget;
import 'package:flutter/material.dart';

class DataOrderModel extends FlutterFlowModel<DataOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // Model for search component.
  late SearchModel searchModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<OrderStruct>();

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    searchModel = createModel(context, () => SearchModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchModel.dispose();
    paginatedDataTableController.dispose();
  }
}
