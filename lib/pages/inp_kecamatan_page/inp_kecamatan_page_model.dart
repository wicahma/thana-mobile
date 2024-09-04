import '/flutter_flow/flutter_flow_util.dart';
import 'inp_kecamatan_page_widget.dart' show InpKecamatanPageWidget;
import 'package:flutter/material.dart';

class InpKecamatanPageModel extends FlutterFlowModel<InpKecamatanPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
