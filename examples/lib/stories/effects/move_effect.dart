import 'package:flame/effects.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';

import '../../commons/square_component.dart';

class MoveEffectGame extends BaseGame with TapDetector {
  late SquareComponent square;

  @override
  Future<void> onLoad() async {
    square = SquareComponent()..position.setValues(100, 100);
    add(square);
  }

  @override
  void onTapUp(TapUpInfo event) {
    square.addEffect(
      MoveEffect(
        path: [
          event.eventPosition.game,
          Vector2(100, 100),
          Vector2(50, 120),
          Vector2(200, 400),
          Vector2(150, 0),
          Vector2(100, 300),
        ],
        speed: 250.0,
        curve: Curves.bounceInOut,
        isAlternating: true,
      ),
    );
  }
}
