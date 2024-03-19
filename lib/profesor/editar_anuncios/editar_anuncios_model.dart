import '/flutter_flow/flutter_flow_util.dart';
import 'editar_anuncios_widget.dart' show EditarAnunciosWidget;
import 'package:flutter/material.dart';

class EditarAnunciosModel extends FlutterFlowModel<EditarAnunciosWidget> {
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
