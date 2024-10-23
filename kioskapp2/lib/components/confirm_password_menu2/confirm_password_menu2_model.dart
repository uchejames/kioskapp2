import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_password_menu2_widget.dart' show ConfirmPasswordMenu2Widget;
import 'package:flutter/material.dart';

class ConfirmPasswordMenu2Model
    extends FlutterFlowModel<ConfirmPasswordMenu2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
