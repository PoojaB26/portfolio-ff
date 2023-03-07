import '/components/navigation_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigationRowModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for NavigationButton component.
  late NavigationButtonModel navigationButtonModel1;
  // Model for NavigationButton component.
  late NavigationButtonModel navigationButtonModel2;
  // Model for NavigationButton component.
  late NavigationButtonModel navigationButtonModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navigationButtonModel1 =
        createModel(context, () => NavigationButtonModel());
    navigationButtonModel2 =
        createModel(context, () => NavigationButtonModel());
    navigationButtonModel3 =
        createModel(context, () => NavigationButtonModel());
  }

  void dispose() {
    navigationButtonModel1.dispose();
    navigationButtonModel2.dispose();
    navigationButtonModel3.dispose();
  }

  /// Additional helper methods are added here.

}
