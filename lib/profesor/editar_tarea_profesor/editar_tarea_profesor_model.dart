import '/flutter_flow/flutter_flow_util.dart';
import 'editar_tarea_profesor_widget.dart' show EditarTareaProfesorWidget;
import 'package:flutter/material.dart';

class EditarTareaProfesorModel
    extends FlutterFlowModel<EditarTareaProfesorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombreTarea widget.
  FocusNode? txtNombreTareaFocusNode;
  TextEditingController? txtNombreTareaController;
  String? Function(BuildContext, String?)? txtNombreTareaControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaController;
  String? Function(BuildContext, String?)? txtFechaControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNombreTareaFocusNode?.dispose();
    txtNombreTareaController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
