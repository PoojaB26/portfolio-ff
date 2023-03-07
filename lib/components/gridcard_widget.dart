import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gridcard_model.dart';
export 'gridcard_model.dart';

class GridcardWidget extends StatefulWidget {
  const GridcardWidget({Key? key}) : super(key: key);

  @override
  _GridcardWidgetState createState() => _GridcardWidgetState();
}

class _GridcardWidgetState extends State<GridcardWidget> {
  late GridcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridcardModel());
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
      width: 100.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Image.network(
              'https://picsum.photos/seed/237/600',
              width: double.infinity,
              height: 213.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiaryColor,
            ),
            child: Text(
              'Heading',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
