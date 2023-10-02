import '/components/cabecalho_widget.dart';
import '/components/convite_widget.dart';
import '/components/usuario_detalhe_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
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
