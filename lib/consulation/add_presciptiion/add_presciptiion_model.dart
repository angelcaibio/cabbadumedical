import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_presciptiion_widget.dart' show AddPresciptiionWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPresciptiionModel extends FlutterFlowModel<AddPresciptiionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Forms widget.
  String? formsValue;
  FormFieldController<String>? formsValueController;
  // State field(s) for Strenght widget.
  FocusNode? strenghtFocusNode;
  TextEditingController? strenghtTextController;
  String? Function(BuildContext, String?)? strenghtTextControllerValidator;
  // State field(s) for Unit widget.
  String? unitValue;
  FormFieldController<String>? unitValueController;
  // State field(s) for Days widget.
  FocusNode? daysFocusNode;
  TextEditingController? daysTextController;
  String? Function(BuildContext, String?)? daysTextControllerValidator;
  // State field(s) for Frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  // State field(s) for Frequency widget.
  FocusNode? frequencyFocusNode;
  TextEditingController? frequencyTextController;
  String? Function(BuildContext, String?)? frequencyTextControllerValidator;
  // State field(s) for Instruction widget.
  FocusNode? instructionFocusNode;
  TextEditingController? instructionTextController;
  String? Function(BuildContext, String?)? instructionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    strenghtFocusNode?.dispose();
    strenghtTextController?.dispose();

    daysFocusNode?.dispose();
    daysTextController?.dispose();

    frequencyFocusNode?.dispose();
    frequencyTextController?.dispose();

    instructionFocusNode?.dispose();
    instructionTextController?.dispose();
  }
}
