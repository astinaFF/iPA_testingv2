import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login1_widget.dart' show Login1Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Login1Model extends FlutterFlowModel<Login1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? authResponse;
  // Stores action output result for [Backend Call - API (Get User Profile)] action in Button widget.
  ApiCallResponse? getProfilResponse;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
