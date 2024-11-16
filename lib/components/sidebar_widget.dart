import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/pilih_role_widget.dart';
import '/components/single_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sidebar_model.dart';
export 'sidebar_model.dart';

class SidebarWidget extends StatefulWidget {
  const SidebarWidget({super.key});

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  late SidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: true);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
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

    return Visibility(
      visible: FFAppState().sideNav == true,
      child: Container(
        width: 270.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 2.0,
              color: Color(0x16000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 100.0,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/LOGO-01.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: const PilihRoleWidget(),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 68.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 2.0,
                                  color: Color(0x1C000000),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.network(
                                              'https://images.unsplash.com/photo-1511367461989-f85a21fda167?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxwcm9maWxlfGVufDB8fHx8MTcxMDM1ODkyOHww&ixlib=rb-4.0.3&q=80&w=1080',
                                            ).image,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            () {
                                              if (FFAppState().Role.role ==
                                                  Role.Customer) {
                                                return 'Customer';
                                              } else if (FFAppState()
                                                      .Role
                                                      .role ==
                                                  Role.Admin) {
                                                return 'Administrator';
                                              } else {
                                                return 'Manager';
                                              }
                                            }(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            'LJSS App',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1.0,
                      color: Color(0x2B14181B),
                    ),
                  ].divide(const SizedBox(height: 24.0)),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Dashboard');
                  },
                  child: wrapWithModel(
                    model: _model.singleMenuModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: SingleMenuWidget(
                      judul: 'Dashboard',
                      icon: Icon(
                        Icons.dashboard_sharp,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 32.0,
                      ),
                      aktif: false,
                    ),
                  ),
                ),
                if (FFAppState().Role.role == Role.Customer)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Order');
                    },
                    child: wrapWithModel(
                      model: _model.singleMenuModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: SingleMenuWidget(
                        judul: 'Order',
                        icon: Icon(
                          Icons.border_color_sharp,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 32.0,
                        ),
                        aktif: false,
                      ),
                    ),
                  ),
                if (FFAppState().Role.role == Role.Manager)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Order');
                    },
                    child: wrapWithModel(
                      model: _model.singleMenuModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: SingleMenuWidget(
                        judul: 'Invoice',
                        icon: Icon(
                          Icons.fact_check,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 32.0,
                        ),
                        aktif: false,
                      ),
                    ),
                  ),
                if (FFAppState().Role.role == Role.Manager)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Order');
                    },
                    child: wrapWithModel(
                      model: _model.singleMenuModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: SingleMenuWidget(
                        judul: 'Data Pegawai',
                        icon: Icon(
                          Icons.people,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 32.0,
                        ),
                        aktif: false,
                      ),
                    ),
                  ),
                if (FFAppState().Role.role == Role.Manager)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Order');
                    },
                    child: wrapWithModel(
                      model: _model.singleMenuModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: SingleMenuWidget(
                        judul: 'Pengeluaran Pribadi',
                        icon: Icon(
                          Icons.money_off,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 32.0,
                        ),
                        aktif: false,
                      ),
                    ),
                  ),
                if ((FFAppState().Role.role == Role.Admin) ||
                    (FFAppState().Role.role == Role.Manager))
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: Container(
                        width: double.infinity,
                        color: const Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController1,
                          child: ExpandablePanel(
                            header: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.payments_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 32.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Finance',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            collapsed: Container(),
                            expanded: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().Finance = FinanceStruct(
                                        finance: Finance.Order_Calculation,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed('Finance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.singleMenuModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SingleMenuWidget(
                                        judul: 'Order Calculation',
                                        icon: Icon(
                                          Icons.arrow_right_sharp,
                                          size: 32.0,
                                        ),
                                        aktif: false,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().Finance = FinanceStruct(
                                        finance: Finance.Biaya_Langsung,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed('Finance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.singleMenuModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SingleMenuWidget(
                                        judul: 'Biaya Langsung',
                                        icon: Icon(
                                          Icons.arrow_right_sharp,
                                          size: 32.0,
                                        ),
                                        aktif: false,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().Finance = FinanceStruct(
                                        finance: Finance.Biaya_Lain,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed('Finance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.singleMenuModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SingleMenuWidget(
                                        judul: 'Biaya Lain-lain',
                                        icon: Icon(
                                          Icons.arrow_right_sharp,
                                          size: 32.0,
                                        ),
                                        aktif: false,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().Finance = FinanceStruct(
                                        finance: Finance.Hutang,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed('Finance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.singleMenuModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SingleMenuWidget(
                                        judul: 'Hutang',
                                        icon: Icon(
                                          Icons.arrow_right_sharp,
                                          size: 32.0,
                                        ),
                                        aktif: false,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().Finance = FinanceStruct(
                                        finance: Finance.Piutang,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed('Finance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.singleMenuModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SingleMenuWidget(
                                        judul: 'Piutang',
                                        icon: Icon(
                                          Icons.arrow_right_sharp,
                                          size: 32.0,
                                        ),
                                        aktif: false,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().Finance = FinanceStruct(
                                        finance: Finance.Inventaris,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed('Finance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.singleMenuModel11,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SingleMenuWidget(
                                        judul: 'Inventaris',
                                        icon: Icon(
                                          Icons.arrow_right_sharp,
                                          size: 32.0,
                                        ),
                                        aktif: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              expandIcon: Icons.arrow_right,
                              collapseIcon: Icons.arrow_drop_down,
                              iconSize: 24.0,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (FFAppState().Role.role == Role.Manager)
                  Container(
                    decoration: const BoxDecoration(),
                    child: Container(
                      width: double.infinity,
                      color: const Color(0x00000000),
                      child: ExpandableNotifier(
                        controller: _model.expandableExpandableController2,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.task,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 32.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Laporan',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          collapsed: Container(),
                          expanded: const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [],
                            ),
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                            expandIcon: Icons.arrow_right,
                            collapseIcon: Icons.arrow_drop_down,
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                    ),
                  ),
                Container(
                  decoration: const BoxDecoration(),
                  child: Container(
                    width: double.infinity,
                    color: const Color(0x00000000),
                    child: ExpandableNotifier(
                      controller: _model.expandableExpandableController3,
                      child: ExpandablePanel(
                        header: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.all_inbox,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 32.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Master Data',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        collapsed: Container(),
                        expanded: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().MasterData = MasterDataStruct(
                                    masterData: MasterData.Data_Shipper,
                                  );
                                  _model.updatePage(() {});

                                  context.pushNamed('MasterData');
                                },
                                child: wrapWithModel(
                                  model: _model.singleMenuModel12,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const SingleMenuWidget(
                                    judul: 'Data Shipper',
                                    icon: Icon(
                                      Icons.arrow_right_sharp,
                                      size: 32.0,
                                    ),
                                    aktif: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().MasterData = MasterDataStruct(
                                    masterData: MasterData.Data_Party,
                                  );
                                  _model.updatePage(() {});

                                  context.pushNamed('MasterData');
                                },
                                child: wrapWithModel(
                                  model: _model.singleMenuModel13,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const SingleMenuWidget(
                                    judul: 'Data Party',
                                    icon: Icon(
                                      Icons.arrow_right_sharp,
                                      size: 32.0,
                                    ),
                                    aktif: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().MasterData = MasterDataStruct(
                                    masterData: MasterData.Data_Bongkar,
                                  );
                                  _model.updatePage(() {});

                                  context.pushNamed('MasterData');
                                },
                                child: wrapWithModel(
                                  model: _model.singleMenuModel14,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const SingleMenuWidget(
                                    judul: 'Data Bongkar',
                                    icon: Icon(
                                      Icons.arrow_right_sharp,
                                      size: 32.0,
                                    ),
                                    aktif: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().MasterData = MasterDataStruct(
                                    masterData: MasterData.Data_Truck,
                                  );
                                  _model.updatePage(() {});

                                  context.pushNamed('MasterData');
                                },
                                child: wrapWithModel(
                                  model: _model.singleMenuModel15,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const SingleMenuWidget(
                                    judul: 'Data Truck',
                                    icon: Icon(
                                      Icons.arrow_right_sharp,
                                      size: 32.0,
                                    ),
                                    aktif: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().MasterData = MasterDataStruct(
                                    masterData: MasterData.Data_Dokumen,
                                  );
                                  _model.updatePage(() {});

                                  context.pushNamed('MasterData');
                                },
                                child: wrapWithModel(
                                  model: _model.singleMenuModel16,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const SingleMenuWidget(
                                    judul: 'Data Dokumen',
                                    icon: Icon(
                                      Icons.arrow_right_sharp,
                                      size: 32.0,
                                    ),
                                    aktif: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().MasterData = MasterDataStruct(
                                    masterData: MasterData.Data_Vendor,
                                  );
                                  _model.updatePage(() {});

                                  context.pushNamed('MasterData');
                                },
                                child: wrapWithModel(
                                  model: _model.singleMenuModel17,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const SingleMenuWidget(
                                    judul: 'Data Vendor',
                                    icon: Icon(
                                      Icons.arrow_right_sharp,
                                      size: 32.0,
                                    ),
                                    aktif: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        theme: ExpandableThemeData(
                          tapHeaderToExpand: true,
                          tapBodyToExpand: false,
                          tapBodyToCollapse: false,
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center,
                          hasIcon: true,
                          expandIcon: Icons.arrow_right,
                          collapseIcon: Icons.arrow_drop_down,
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Color(0x2B14181B),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('Login', context.mounted);
                  },
                  child: wrapWithModel(
                    model: _model.logoutModel,
                    updateCallback: () => safeSetState(() {}),
                    child: SingleMenuWidget(
                      judul: 'Log out',
                      icon: Icon(
                        Icons.login_sharp,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 32.0,
                      ),
                      aktif: false,
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
