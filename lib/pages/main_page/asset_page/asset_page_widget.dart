import '/components/asset_list_widget.dart';
import '/components/kecamatan_list_widget.dart';
import '/components/skpd_list_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'asset_page_model.dart';
export 'asset_page_model.dart';

class AssetPageWidget extends StatefulWidget {
  const AssetPageWidget({super.key});

  @override
  State<AssetPageWidget> createState() => _AssetPageWidgetState();
}

class _AssetPageWidgetState extends State<AssetPageWidget>
    with TickerProviderStateMixin {
  late AssetPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssetPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            if (_model.tabBarCurrentIndex == 0) {
              context.pushNamed('InpAssetPage');
            } else if (_model.tabBarCurrentIndex == 1) {
              context.pushNamed('InpSkpdPage');
            } else {
              context.pushNamed('InpKecamatanPage');
            }
          },
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          elevation: 5.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).primary,
            size: 30.0,
          ),
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Asset',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              actions: const [],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(5.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Text(
                    'Lihat secara rinci data pertanahan dalam genggaman tangan anda.',
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              centerTitle: false,
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          labelColor: FlutterFlowTheme.of(context).tertiary,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).primaryInactive,
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                          unselectedBackgroundColor:
                              FlutterFlowTheme.of(context).tertiary,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          unselectedBorderColor:
                              FlutterFlowTheme.of(context).tertiary,
                          borderWidth: 1.0,
                          borderRadius: 8.0,
                          elevation: 0.0,
                          buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              9.0, 0.0, 9.0, 5.0),
                          tabs: const [
                            Tab(
                              text: 'Asset',
                            ),
                            Tab(
                              text: 'SKPD',
                            ),
                            Tab(
                              text: 'Kecamatan',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  9.0, 0.0, 9.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    StickyHeader(
                                      overlapHeaders: false,
                                      header: Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'No',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Penggunaan',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                'Tanggal',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model.assetListModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AssetListWidget(
                                                uuid: '1123',
                                                penggunaan: 'Digunakan',
                                                tanggal: '12 Oktober 2023',
                                                kecamatan: 'Nanga Pinoh',
                                                statusSertifikat:
                                                    'Bersertifikat',
                                                skpd: 'DINAS LINGKUNGAN HIDUP',
                                                image:
                                                    random_data.randomImageUrl(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.assetListModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AssetListWidget(
                                                uuid: '1123',
                                                penggunaan: 'Digunakan',
                                                tanggal: '12 Oktober 2023',
                                                kecamatan: 'Nanga Pinoh',
                                                statusSertifikat:
                                                    'Bersertifikat',
                                                skpd: 'DINAS LINGKUNGAN HIDUP',
                                                image:
                                                    random_data.randomImageUrl(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.assetListModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AssetListWidget(
                                                uuid: '1123',
                                                penggunaan: 'Digunakan',
                                                tanggal: '12 Oktober 2023',
                                                kecamatan: 'Nanga Pinoh',
                                                statusSertifikat:
                                                    'Bersertifikat',
                                                skpd: 'DINAS LINGKUNGAN HIDUP',
                                                image:
                                                    random_data.randomImageUrl(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.assetListModel4,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AssetListWidget(
                                                uuid: '1123',
                                                penggunaan: 'Digunakan',
                                                tanggal: '12 Oktober 2023',
                                                kecamatan: 'Nanga Pinoh',
                                                statusSertifikat:
                                                    'Bersertifikat',
                                                skpd: 'DINAS LINGKUNGAN HIDUP',
                                                image:
                                                    random_data.randomImageUrl(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 7.0))
                                              .addToStart(
                                                  const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  9.0, 0.0, 9.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    StickyHeader(
                                      overlapHeaders: false,
                                      header: Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'No',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Nama SKPD',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            wrapWithModel(
                                              model: _model.skpdListModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const SkpdListWidget(),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 7.0))
                                              .addToStart(
                                                  const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  9.0, 0.0, 9.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    StickyHeader(
                                      overlapHeaders: false,
                                      header: Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'No',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Nama Kecamatan',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            wrapWithModel(
                                              model: _model.kecamatanListModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const KecamatanListWidget(),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 7.0))
                                              .addToStart(
                                                  const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
