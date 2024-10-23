import '/components/class_select/class_select_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_new_stretch_widget.dart' show AddNewStretchWidget;
import 'package:flutter/material.dart';

class AddNewStretchModel extends FlutterFlowModel<AddNewStretchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for class_select component.
  late ClassSelectModel classSelectModel;

  @override
  void initState(BuildContext context) {
    classSelectModel = createModel(context, () => ClassSelectModel());
  }

  @override
  void dispose() {
    classSelectModel.dispose();
  }
}
