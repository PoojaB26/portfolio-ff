import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navigation_button_model.dart';
export 'navigation_button_model.dart';

class NavigationButtonWidget extends StatefulWidget {
  const NavigationButtonWidget({
    Key? key,
    this.navigationAction,
    this.title,
  }) : super(key: key);

  final Future<dynamic> Function()? navigationAction;
  final String? title;

  @override
  _NavigationButtonWidgetState createState() => _NavigationButtonWidgetState();
}

class _NavigationButtonWidgetState extends State<NavigationButtonWidget>
    with TickerProviderStateMixin {
  late NavigationButtonModel _model;

  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () async {
        await widget.navigationAction?.call();
      },
      text: widget.title!,
      options: FFButtonOptions(
        width: 130.0,
        height: 40.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).lineColor,
        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: 'Poppins',
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
        hoverColor: FlutterFlowTheme.of(context).lineColor,
        hoverBorderSide: BorderSide(
          width: 0.0,
        ),
        hoverTextColor: Color(0xFFEE8B60),
      ),
      showLoadingIndicator: false,
    ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation']!);
  }
}
