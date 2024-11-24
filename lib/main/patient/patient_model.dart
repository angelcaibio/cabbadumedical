import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main/navigation/navigation_widget.dart';
import 'patient_widget.dart' show PatientWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:url_launcher/url_launcher.dart';

class PatientModel extends FlutterFlowModel<PatientWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchPatient widget.
  FocusNode? searchPatientFocusNode;
  TextEditingController? searchPatientTextController;
  String? Function(BuildContext, String?)? searchPatientTextControllerValidator;
  List<PatientsRecord> simpleSearchResults = [];
  // Model for Navigation component.
  late NavigationModel navigationModel;

  @override
  void initState(BuildContext context) {
    navigationModel = createModel(context, () => NavigationModel());
  }

  @override
  void dispose() {
    searchPatientFocusNode?.dispose();
    searchPatientTextController?.dispose();

    navigationModel.dispose();
  }
}
