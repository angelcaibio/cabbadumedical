import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_schedule_widget.dart' show AddScheduleWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddScheduleModel extends FlutterFlowModel<AddScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Days widget.
  FocusNode? daysFocusNode;
  TextEditingController? daysTextController;
  String? Function(BuildContext, String?)? daysTextControllerValidator;
  // State field(s) for Time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    daysFocusNode?.dispose();
    daysTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();
  }
}
