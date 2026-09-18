import '/flutter_flow/flutter_flow_util.dart';
import 'push_va_aksiya_page_widget.dart' show PushVaAksiyaPageWidget;
import 'package:flutter/material.dart';

class PushVaAksiyaPageModel extends FlutterFlowModel<PushVaAksiyaPageWidget> {
  ///  State fields for stateful widgets in this page.

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
