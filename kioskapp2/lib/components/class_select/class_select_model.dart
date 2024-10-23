import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'class_select_widget.dart' show ClassSelectWidget;
import 'package:flutter/material.dart';

class ClassSelectModel extends FlutterFlowModel<ClassSelectWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for streamname widget.
  FocusNode? streamnameFocusNode;
  TextEditingController? streamnameTextController;
  String? Function(BuildContext, String?)? streamnameTextControllerValidator;
  // State field(s) for fitnesslevel widget.
  FocusNode? fitnesslevelFocusNode1;
  TextEditingController? fitnesslevelTextController1;
  String? Function(BuildContext, String?)? fitnesslevelTextController1Validator;
  // State field(s) for fitnesslevel widget.
  FocusNode? fitnesslevelFocusNode2;
  TextEditingController? fitnesslevelTextController2;
  String? Function(BuildContext, String?)? fitnesslevelTextController2Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    streamnameFocusNode?.dispose();
    streamnameTextController?.dispose();

    fitnesslevelFocusNode1?.dispose();
    fitnesslevelTextController1?.dispose();

    fitnesslevelFocusNode2?.dispose();
    fitnesslevelTextController2?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }
}
