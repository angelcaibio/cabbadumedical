import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'request_laboratory_widget.dart' show RequestLaboratoryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RequestLaboratoryModel extends FlutterFlowModel<RequestLaboratoryWidget> {
  ///  Local state fields for this component.

  DocumentReference? laboratories;

  ///  State fields for stateful widgets in this component.

  // State field(s) for AvailableLab widget.
  String? availableLabValue;
  FormFieldController<String>? availableLabValueController;
  // State field(s) for Type widget.
  FocusNode? typeFocusNode;
  TextEditingController? typeTextController;
  String? Function(BuildContext, String?)? typeTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Request widget.
  LaboratoriesRecord? selectedLab;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    typeFocusNode?.dispose();
    typeTextController?.dispose();
  }
}
