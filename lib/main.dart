import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';

void main() async {
  final game = FlameGame();
  game.add(BackgroundComponent());
  runApp(MaterialApp(
    home: Center(child: GameWidget(game: game)),
  ));
}

class BackgroundComponent extends Component with HasGameRef {
  var offsetX = 100.0;
  var offsetY = 100.0;
  SpriteSheet? background;
  static const defaultSize = 64.0;
  @override
  Future<void>? onLoad() async {
    final image = await Flame.images.load('tilesheet.png');
    background = SpriteSheet(image: image, srcSize: Vector2.all(64));

    return super.onLoad();
  }

  void render(Canvas canvas) async {
    canvas.drawRect(
      Rect.fromLTWH(0, 0, gameRef.size.x, gameRef.size.y),
      Paint()..color = Colors.white,
    );

    background?.getSpriteById(242).render(canvas);
    background
        ?.getSpriteById(242)
        .render(canvas, position: Vector2(0, defaultSize));
    background
        ?.getSpriteById(243)
        .render(canvas, position: Vector2(0, 2 * defaultSize));
    background
        ?.getSpriteById(240)
        .render(canvas, position: Vector2(defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(2 * defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(3 * defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(4 * defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(5 * defaultSize, 0));
    background
        ?.getSpriteById(263)
        .render(canvas, position: Vector2(defaultSize, defaultSize));
    background
        ?.getSpriteById(264)
        .render(canvas, position: Vector2(2 * defaultSize, defaultSize));
    background
        ?.getSpriteById(264)
        .render(canvas, position: Vector2(3 * defaultSize, defaultSize));
    background
        ?.getSpriteById(264)
        .render(canvas, position: Vector2(4 * defaultSize, defaultSize));
    background
        ?.getSpriteById(221)
        .render(canvas, position: Vector2(5 * defaultSize, defaultSize));
    background
        ?.getSpriteById(240)
        .render(canvas, position: Vector2(5 * defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(218)
        .render(canvas, position: Vector2(defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(218)
        .render(canvas, position: Vector2(2 * defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(218)
        .render(canvas, position: Vector2(3 * defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(219)
        .render(canvas, position: Vector2(4 * defaultSize, 2 * defaultSize));
    canvas.translate(0, 4 * defaultSize);
    background?.getSpriteById(242).render(canvas);
    background
        ?.getSpriteById(242)
        .render(canvas, position: Vector2(0, defaultSize));
    background
        ?.getSpriteById(243)
        .render(canvas, position: Vector2(0, 2 * defaultSize));
    background
        ?.getSpriteById(240)
        .render(canvas, position: Vector2(defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(2 * defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(3 * defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(4 * defaultSize, 0));
    background
        ?.getSpriteById(241)
        .render(canvas, position: Vector2(5 * defaultSize, 0));
    background
        ?.getSpriteById(263)
        .render(canvas, position: Vector2(defaultSize, defaultSize));
    background
        ?.getSpriteById(264)
        .render(canvas, position: Vector2(2 * defaultSize, defaultSize));
    background
        ?.getSpriteById(264)
        .render(canvas, position: Vector2(3 * defaultSize, defaultSize));
    background
        ?.getSpriteById(264)
        .render(canvas, position: Vector2(4 * defaultSize, defaultSize));
    background
        ?.getSpriteById(221)
        .render(canvas, position: Vector2(5 * defaultSize, defaultSize));
    background
        ?.getSpriteById(240)
        .render(canvas, position: Vector2(5 * defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(218)
        .render(canvas, position: Vector2(defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(218)
        .render(canvas, position: Vector2(2 * defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(218)
        .render(canvas, position: Vector2(3 * defaultSize, 2 * defaultSize));
    background
        ?.getSpriteById(219)
        .render(canvas, position: Vector2(4 * defaultSize, 2 * defaultSize));
    // background?.getSprite(1, 1).render(canvas);
    // background
    //     ?.getSprite(1, 1)
    //     .render(canvas, position: Vector2(defaultSize, 0));
  }

  @override
  void update(double dt) {
    // if(gameRef.size.x >= offsetX+100 ) offsetX += 2;
    // if(gameRef.size.y >= offsetY+100) offsetY += 1;
  }
}
