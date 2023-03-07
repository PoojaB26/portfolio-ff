import '/components/navigation_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navigation_row_model.dart';
export 'navigation_row_model.dart';

class NavigationRowWidget extends StatefulWidget {
  const NavigationRowWidget({Key? key}) : super(key: key);

  @override
  _NavigationRowWidgetState createState() => _NavigationRowWidgetState();
}

class _NavigationRowWidgetState extends State<NavigationRowWidget> {
  late NavigationRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 100.0,
      constraints: BoxConstraints(
        maxHeight: 100.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).lineColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35.0, 35.0, 35.0, 35.0),
              child: Image.asset(
                'assets/images/full_name_logo_black.png',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () async {
                    context.goNamed('HomePage');
                  },
                  child: wrapWithModel(
                    model: _model.navigationButtonModel1,
                    updateCallback: () => setState(() {}),
                    child: NavigationButtonWidget(
                      title: 'Home',
                      navigationAction: () async {},
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('VideoListPage');
                  },
                  child: wrapWithModel(
                    model: _model.navigationButtonModel2,
                    updateCallback: () => setState(() {}),
                    child: NavigationButtonWidget(
                      title: 'Videos',
                      navigationAction: () async {},
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.navigationButtonModel3,
                  updateCallback: () => setState(() {}),
                  child: NavigationButtonWidget(
                    title: 'Speaking',
                    navigationAction: () async {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
