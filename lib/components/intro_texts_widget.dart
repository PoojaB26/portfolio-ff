import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'intro_texts_model.dart';
export 'intro_texts_model.dart';

class IntroTextsWidget extends StatefulWidget {
  const IntroTextsWidget({Key? key}) : super(key: key);

  @override
  _IntroTextsWidgetState createState() => _IntroTextsWidgetState();
}

class _IntroTextsWidgetState extends State<IntroTextsWidget> {
  late IntroTextsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroTextsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Hi, I\'m Pooja Bhaumik. A software engineer, content creator, mentor & public speaker.',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ],
      ),
    );
  }
}
