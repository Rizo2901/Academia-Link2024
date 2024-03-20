import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'corazon_model.dart';
export 'corazon_model.dart';

class CorazonWidget extends StatefulWidget {
  const CorazonWidget({super.key});

  @override
  State<CorazonWidget> createState() => _CorazonWidgetState();
}

class _CorazonWidgetState extends State<CorazonWidget>
    with TickerProviderStateMixin {
  late CorazonModel _model;

  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: const Offset(0.0, -1.0),
          end: const Offset(1.0, 1.0),
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 920.ms,
          duration: 440.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(0.0, 0.0),
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
    _model = createModel(context, () => CorazonModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite_sharp,
      color: FlutterFlowTheme.of(context).error,
      size: 120.0,
    ).animateOnActionTrigger(
      animationsMap['iconOnActionTriggerAnimation']!,
    );
  }
}
