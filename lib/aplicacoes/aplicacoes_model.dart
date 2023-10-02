import '/components/cabecalho_widget.dart';
import '/components/vaga_aplic_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'aplicacoes_widget.dart' show AplicacoesWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AplicacoesModel extends FlutterFlowModel<AplicacoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  void dispose() {
    cabecalhoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
