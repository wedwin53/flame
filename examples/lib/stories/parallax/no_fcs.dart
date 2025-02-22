import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';

/// This examples serves to test the Parallax feature outside of the
/// Flame Component System (FCS), use the other files in this folder
/// for examples on how to use parallax with FCS
/// FCS is only used when you extend BaseGame, not Game,
/// like we do in this example.
class NoFCSParallaxGame extends Game {
  late Parallax parallax;

  @override
  Future<void> onLoad() async {
    parallax = await loadParallax(
      [
        'parallax/bg.png',
        'parallax/mountain-far.png',
        'parallax/mountains.png',
        'parallax/trees.png',
        'parallax/foreground-trees.png',
      ],
      size: size,
      baseVelocity: Vector2(20, 0),
      velocityMultiplierDelta: Vector2(1.8, 1.0),
    );
  }

  @override
  void update(double dt) {
    parallax.update(dt);
  }

  @override
  void render(Canvas canvas) {
    parallax.render(canvas);
  }
}
