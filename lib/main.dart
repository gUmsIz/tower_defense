import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final game = FlameGame();
  game.add(BackgroundComponent());
  runApp(MaterialApp(
    home: SafeArea(
      child: GameWidget(game: game),
    ),
  ));
}

class BackgroundComponent extends Component with HasGameRef {
  @override
  void render(Canvas canvas) {
    canvas.rotate(0.7);
    canvas.drawRect(
      Rect.fromLTWH(0, 0, gameRef.size.x, gameRef.size.y),
      Paint()..color = Colors.white,
    );
    canvas.drawCircle(
      Offset(gameRef.size.x / 2, gameRef.size.y / 2),
      100,
      Paint()..color = Colors.red,
    );
  }
}
