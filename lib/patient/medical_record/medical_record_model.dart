import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'medical_record_widget.dart' show MedicalRecordWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class MedicalRecordModel extends FlutterFlowModel<MedicalRecordWidget> {
  ///  Local state fields for this page.

  bool seachActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchDiagnosis widget.
  FocusNode? searchDiagnosisFocusNode;
  TextEditingController? searchDiagnosisTextController;
  String? Function(BuildContext, String?)?
      searchDiagnosisTextControllerValidator;
  List<ConsultationRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchDiagnosisFocusNode?.dispose();
    searchDiagnosisTextController?.dispose();
  }
}
