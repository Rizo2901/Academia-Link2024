import '/flutter_flow/flutter_flow_util.dart';
import 'crear_anuncios_widget.dart' show CrearAnunciosWidget;
import 'package:flutter/material.dart';

class CrearAnunciosModel extends FlutterFlowModel<CrearAnunciosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtDescripcionAnuncio widget.
  FocusNode? txtDescripcionAnuncioFocusNode;
  TextEditingController? txtDescripcionAnuncioController;
  String? Function(BuildContext, String?)?
      txtDescripcionAnuncioControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtDescripcionAnuncioFocusNode?.dispose();
    txtDescripcionAnuncioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
