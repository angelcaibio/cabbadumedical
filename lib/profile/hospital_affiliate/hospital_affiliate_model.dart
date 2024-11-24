import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'hospital_affiliate_widget.dart' show HospitalAffiliateWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HospitalAffiliateModel extends FlutterFlowModel<HospitalAffiliateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for HospitalName widget.
  FocusNode? hospitalNameFocusNode;
  TextEditingController? hospitalNameTextController;
  String? Function(BuildContext, String?)? hospitalNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cityFocusNode?.dispose();
    cityTextController?.dispose();

    hospitalNameFocusNode?.dispose();
    hospitalNameTextController?.dispose();
  }
}
