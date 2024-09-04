import '/components/asset_list_widget.dart';
import '/components/kecamatan_list_widget.dart';
import '/components/skpd_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'asset_page_widget.dart' show AssetPageWidget;
import 'package:flutter/material.dart';

class AssetPageModel extends FlutterFlowModel<AssetPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for AssetList component.
  late AssetListModel assetListModel1;
  // Model for AssetList component.
  late AssetListModel assetListModel2;
  // Model for AssetList component.
  late AssetListModel assetListModel3;
  // Model for AssetList component.
  late AssetListModel assetListModel4;
  // Model for SkpdList component.
  late SkpdListModel skpdListModel;
  // Model for KecamatanList component.
  late KecamatanListModel kecamatanListModel;

  @override
  void initState(BuildContext context) {
    assetListModel1 = createModel(context, () => AssetListModel());
    assetListModel2 = createModel(context, () => AssetListModel());
    assetListModel3 = createModel(context, () => AssetListModel());
    assetListModel4 = createModel(context, () => AssetListModel());
    skpdListModel = createModel(context, () => SkpdListModel());
    kecamatanListModel = createModel(context, () => KecamatanListModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    assetListModel1.dispose();
    assetListModel2.dispose();
    assetListModel3.dispose();
    assetListModel4.dispose();
    skpdListModel.dispose();
    kecamatanListModel.dispose();
  }
}
