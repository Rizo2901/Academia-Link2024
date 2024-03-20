import '/flutter_flow/flutter_flow_util.dart';
import 'crear_anuncios_widget.dart' show CrearAnunciosWidget;
import 'package:flutter/material.dart';

class CrearAnunciosModel extends FlutterFlowModel<CrearAnunciosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloController;
  String? Function(BuildContext, String?)? txtTituloControllerValidator;
  String? _txtTituloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese el título';
    }

    return null;
  }

  // State field(s) for txtDescripcionAnuncio widget.
  FocusNode? txtDescripcionAnuncioFocusNode;
  TextEditingController? txtDescripcionAnuncioController;
  String? Function(BuildContext, String?)?
      txtDescripcionAnuncioControllerValidator;
  String? _txtDescripcionAnuncioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese la descripción';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtTituloControllerValidator = _txtTituloControllerValidator;
    txtDescripcionAnuncioControllerValidator =
        _txtDescripcionAnuncioControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtTituloFocusNode?.dispose();
    txtTituloController?.dispose();

    txtDescripcionAnuncioFocusNode?.dispose();
    txtDescripcionAnuncioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
