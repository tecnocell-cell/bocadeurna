import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'socio_economico_widget.dart' show SocioEconomicoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SocioEconomicoModel extends FlutterFlowModel<SocioEconomicoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkInternetConnection] action in socioEconomico widget.
  bool? respostaNet;
  // State field(s) for nomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoController;
  String? Function(BuildContext, String?)? nomeCompletoControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  // State field(s) for localVoto widget.
  String? localVotoValue;
  FormFieldController<String>? localVotoValueController;
  // State field(s) for idade widget.
  String? idadeValue;
  FormFieldController<String>? idadeValueController;
  // State field(s) for sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;
  // State field(s) for escolaridade widget.
  String? escolaridadeValue;
  FormFieldController<String>? escolaridadeValueController;
  // State field(s) for rendaFamiliar widget.
  String? rendaFamiliarValue;
  FormFieldController<String>? rendaFamiliarValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    nomeCompletoFocusNode?.dispose();
    nomeCompletoController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
