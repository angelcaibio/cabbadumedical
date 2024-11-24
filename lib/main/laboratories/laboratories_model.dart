import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main/navigation/navigation_widget.dart';
import 'laboratories_widget.dart' show LaboratoriesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:url_launcher/url_launcher.dart';

class LaboratoriesModel extends FlutterFlowModel<LaboratoriesWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchLaboratories widget.
  FocusNode? searchLaboratoriesFocusNode;
  TextEditingController? searchLaboratoriesTextController;
  String? Function(BuildContext, String?)?
      searchLaboratoriesTextControllerValidator;
  List<LaboratoriesRecord> simpleSearchResults = [];
  // Model for Navigation component.
  late NavigationModel navigationModel;

  @override
  void initState(BuildContext context) {
    navigationModel = createModel(context, () => NavigationModel());
  }

  @override
  void dispose() {
    searchLaboratoriesFocusNode?.dispose();
    searchLaboratoriesTextController?.dispose();

    navigationModel.dispose();
  }
}
