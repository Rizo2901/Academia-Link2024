import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'creargrupos_widget.dart' show CreargruposWidget;
import 'package:flutter/material.dart';

class CreargruposModel extends FlutterFlowModel<CreargruposWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtFSeccion widget.
  FocusNode? txtFSeccionFocusNode;
  TextEditingController? txtFSeccionController;
  String? Function(BuildContext, String?)? txtFSeccionControllerValidator;
  // State field(s) for txtFNombreProfesor widget.
  FocusNode? txtFNombreProfesorFocusNode;
  TextEditingController? txtFNombreProfesorController;
  String? Function(BuildContext, String?)?
      txtFNombreProfesorControllerValidator;
  // State field(s) for dropMaterias widget.
  List<String>? dropMateriasValue;
  FormFieldController<List<String>>? dropMateriasValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFSeccionFocusNode?.dispose();
    txtFSeccionController?.dispose();

    txtFNombreProfesorFocusNode?.dispose();
    txtFNombreProfesorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
