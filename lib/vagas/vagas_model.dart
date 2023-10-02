import '/backend/backend.dart';
import '/components/cabecalho_widget.dart';
import '/components/criar_vaga_widget.dart';
import '/components/vaga_detalhe_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vagas_widget.dart' show VagasWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VagasModel extends FlutterFlowModel<VagasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    cabecalhoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
