import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/consulation/add_result/add_result_widget.dart';
import '/consulation/request_laboratory/request_laboratory_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'diagnosis_widget.dart' show DiagnosisWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DiagnosisModel extends FlutterFlowModel<DiagnosisWidget> {
  ///  Local state fields for this page.

  bool laboratoryRequest = false;

  bool diagnose = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Symptoms widget.
  List<String>? symptomsValue1;
  FormFieldController<List<String>>? symptomsValueController1;
  // State field(s) for Diagnose widget.
  FocusNode? diagnoseFocusNode1;
  TextEditingController? diagnoseTextController1;
  String? Function(BuildContext, String?)? diagnoseTextController1Validator;
  // State field(s) for Remarks widget.
  FocusNode? remarksFocusNode1;
  TextEditingController? remarksTextController1;
  String? Function(BuildContext, String?)? remarksTextController1Validator;
  DateTime? datePicked1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ConsultationRecord? consultation;
  // State field(s) for Symptoms widget.
  List<String>? symptomsValue2;
  FormFieldController<List<String>>? symptomsValueController2;
  // State field(s) for Diagnose widget.
  FocusNode? diagnoseFocusNode2;
  TextEditingController? diagnoseTextController2;
  String? Function(BuildContext, String?)? diagnoseTextController2Validator;
  // State field(s) for Remarks widget.
  FocusNode? remarksFocusNode2;
  TextEditingController? remarksTextController2;
  String? Function(BuildContext, String?)? remarksTextController2Validator;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    diagnoseFocusNode1?.dispose();
    diagnoseTextController1?.dispose();

    remarksFocusNode1?.dispose();
    remarksTextController1?.dispose();

    diagnoseFocusNode2?.dispose();
    diagnoseTextController2?.dispose();

    remarksFocusNode2?.dispose();
    remarksTextController2?.dispose();
  }
}
