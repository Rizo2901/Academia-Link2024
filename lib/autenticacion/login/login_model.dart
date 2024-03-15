import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TxtFCorreo widget.
  FocusNode? txtFCorreoFocusNode;
  TextEditingController? txtFCorreoController;
  String? Function(BuildContext, String?)? txtFCorreoControllerValidator;
  // State field(s) for TxtFContrasena widget.
  FocusNode? txtFContrasenaFocusNode;
  TextEditingController? txtFContrasenaController;
  late bool txtFContrasenaVisibility;
  String? Function(BuildContext, String?)? txtFContrasenaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtFContrasenaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFCorreoFocusNode?.dispose();
    txtFCorreoController?.dispose();

    txtFContrasenaFocusNode?.dispose();
    txtFContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
