import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/order/data_order_list/data_order_list_widget.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'data_order_detail_model.dart';
export 'data_order_detail_model.dart';

class DataOrderDetailWidget extends StatefulWidget {
  const DataOrderDetailWidget({
    super.key,
    required this.supabaseRef,
  });

  final int? supabaseRef;

  @override
  State<DataOrderDetailWidget> createState() => _DataOrderDetailWidgetState();
}

class _DataOrderDetailWidgetState extends State<DataOrderDetailWidget> {
  late DataOrderDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataOrderDetailModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<DataOrderRow>>(
      future: DataOrderTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id_data_order',
          widget.supabaseRef!,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<DataOrderRow> containerDataOrderRowList = snapshot.data!;

        final containerDataOrderRow = containerDataOrderRowList.isNotEmpty
            ? containerDataOrderRowList.first
            : null;

        return Container(
          width: 700.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 64.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Detail Data Order',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Wrap(
                          spacing: 24.0,
                          runSpacing: 24.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'No. Booking',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.noBooking,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Inv. Shipper',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.invoiceShipper,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vessel',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.vessel,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tujuan',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.destination,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tempat Bongkar',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.dataBongkar,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data Shipper',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.shipper,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tanggal Stuffing',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  '${containerDataOrderRow?.tanggal}/${containerDataOrderRow?.bulan}/${containerDataOrderRow?.tahun}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Builder(
                          builder: (context) {
                            final listDataOrder =
                                containerDataOrderRow?.dataOrder.toList() ??
                                    [];

                            return Wrap(
                              spacing: 12.0,
                              runSpacing: 12.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: List.generate(listDataOrder.length,
                                  (listDataOrderIndex) {
                                final listDataOrderItem =
                                    listDataOrder[listDataOrderIndex];
                                return DataOrderListWidget(
                                  key: Key(
                                      'Key8ll_${listDataOrderIndex}_of_${listDataOrder.length}'),
                                  nomor: listDataOrderIndex + 1,
                                  dataTruck: DetailOrderStruct.maybeFromMap(
                                          listDataOrderItem)!
                                      .dataTruck
                                      .vendor,
                                  dataParty: DetailOrderStruct.maybeFromMap(
                                          listDataOrderItem)!
                                      .dataParty
                                      .ukuran,
                                  show: false,
                                  nomorTruck: DetailOrderStruct.maybeFromMap(
                                          listDataOrderItem)
                                      ?.noContainer,
                                  hapus: () async {},
                                );
                              }),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Tutup',
                    icon: const Icon(
                      Icons.close,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).error,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
