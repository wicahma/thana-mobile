import '/flutter_flow/flutter_flow_util.dart';
import 'skpd_list_widget.dart' show SkpdListWidget;
import 'package:flutter/material.dart';

class SkpdListModel extends FlutterFlowModel<SkpdListWidget> {
  ///  Local state fields for this component.

  bool isEdit = false;

  ///  State fields for stateful widgets in this component.

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
