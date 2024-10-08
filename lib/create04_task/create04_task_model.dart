import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'create04_task_widget.dart' show Create04TaskWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Create04TaskModel extends FlutterFlowModel<Create04TaskWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for workOrderList widget.
  String? workOrderListValue;
  FormFieldController<String>? workOrderListValueController;
  // State field(s) for activityList widget.
  String? activityListValue;
  FormFieldController<String>? activityListValueController;
  // State field(s) for workAction widget.
  FocusNode? workActionFocusNode;
  TextEditingController? workActionTextController;
  String? Function(BuildContext, String?)? workActionTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for workProblem widget.
  FocusNode? workProblemFocusNode;
  TextEditingController? workProblemTextController;
  String? Function(BuildContext, String?)? workProblemTextControllerValidator;
  // Stores action output result for [Backend Call - API (PostMechanicActivity)] action in Button widget.
  ApiCallResponse? postMechResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    workActionFocusNode?.dispose();
    workActionTextController?.dispose();

    workProblemFocusNode?.dispose();
    workProblemTextController?.dispose();
  }
}
