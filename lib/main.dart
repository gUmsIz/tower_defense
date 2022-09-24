import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:tower_defense/enemy.dart';

void main() async {
  final game = FlameGame();
  game.add(BackgroundComponent());
  game.add(EnemyComponent());
  runApp(MaterialApp(
    home: SafeArea(
      child: Center(
        child: GameWidget(game: game),
      ),
    ),
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
    background = SpriteSheet(image: image, srcSize: Vector2.all(defaultSize));

    return super.onLoad();
  }

  @override
  void render(Canvas canvas) async {
    canvas.drawRect(
      Rect.fromLTWH(0, 0, gameRef.size.x, gameRef.size.y),
      Paint()..color = Colors.white,
    );
    // canvas.scale(
    //   (gameRef.size.x / (6 * defaultSize)),
    //   gameRef.size.y / (11 * defaultSize),
    // );
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
    background
        ?.getSprite(10, 10)
        .render(canvas, position: Vector2(5 * defaultSize, 3 * defaultSize));
    background
        ?.getSprite(10, 12)
        .render(canvas, position: Vector2(4 * defaultSize, 3 * defaultSize));
    background
        ?.getSprite(10, 10)
        .render(canvas, position: Vector2(5 * defaultSize, 4 * defaultSize));
    background
        ?.getSprite(10, 12)
        .render(canvas, position: Vector2(4 * defaultSize, 4 * defaultSize));
    background
        ?.getSprite(10, 10)
        .render(canvas, position: Vector2(5 * defaultSize, 5 * defaultSize));
    background
        ?.getSprite(11, 12)
        .render(canvas, position: Vector2(4 * defaultSize, 5 * defaultSize));
    background
        ?.getSprite(10, 14)
        .render(canvas, position: Vector2(5 * defaultSize, 6 * defaultSize));
    background
        ?.getSprite(9, 11)
        .render(canvas, position: Vector2(4 * defaultSize, 6 * defaultSize));
    background
        ?.getSprite(9, 10)
        .render(canvas, position: Vector2(3 * defaultSize, 6 * defaultSize));
    background
        ?.getSprite(11, 11)
        .render(canvas, position: Vector2(3 * defaultSize, 5 * defaultSize));
    background
        ?.getSprite(9, 13)
        .render(canvas, position: Vector2(2 * defaultSize, 5 * defaultSize));
    background
        ?.getSprite(10, 12)
        .render(canvas, position: Vector2(2 * defaultSize, 6 * defaultSize));
    background
        ?.getSprite(10, 12)
        .render(canvas, position: Vector2(2 * defaultSize, 7 * defaultSize));
    background
        ?.getSprite(10, 10)
        .render(canvas, position: Vector2(3 * defaultSize, 7 * defaultSize));
    background
        ?.getSprite(10, 12)
        .render(canvas, position: Vector2(2 * defaultSize, 8 * defaultSize));
    background
        ?.getSprite(10, 10)
        .render(canvas, position: Vector2(3 * defaultSize, 8 * defaultSize));
    background
        ?.getSprite(10, 12)
        .render(canvas, position: Vector2(2 * defaultSize, 9 * defaultSize));
    background
        ?.getSprite(10, 10)
        .render(canvas, position: Vector2(3 * defaultSize, 9 * defaultSize));
    background
        ?.getSprite(10, 12)
        .render(canvas, position: Vector2(2 * defaultSize, 10 * defaultSize));
    background
        ?.getSprite(10, 10)
        .render(canvas, position: Vector2(3 * defaultSize, 10 * defaultSize));
    background?.getSprite(10, 11).drawGrid(1, 10, canvas);
    background?.getSprite(10, 11).drawGrid(0, 10, canvas);
    background?.getSprite(10, 11).drawGrid(0, 9, canvas);
    background?.getSprite(10, 11).drawGrid(0, 8, canvas);
    background?.getSprite(10, 11).drawGrid(0, 7, canvas);
    background?.getSprite(10, 11).drawGrid(0, 6, canvas);
    background?.getSprite(10, 11).drawGrid(0, 5, canvas);
    background?.getSprite(10, 11).drawGrid(0, 4, canvas);
    background?.getSprite(10, 11).drawGrid(0, 3, canvas);
    background?.getSprite(10, 11).drawGrid(1, 3, canvas);
    background?.getSprite(10, 11).drawGrid(2, 3, canvas);
    background?.getSprite(10, 11).drawGrid(3, 3, canvas);
    background?.getSprite(10, 11).drawGrid(3, 4, canvas);
    background?.getSprite(10, 11).drawGrid(2, 4, canvas);
    background?.getSprite(10, 11).drawGrid(1, 4, canvas);
    background?.getSprite(10, 11).drawGrid(1, 5, canvas);
    background?.getSprite(10, 11).drawGrid(1, 6, canvas);
    background?.getSprite(10, 11).drawGrid(1, 7, canvas);
    background?.getSprite(10, 11).drawGrid(1, 8, canvas);
    background?.getSprite(10, 11).drawGrid(1, 9, canvas);
    background?.getSprite(10, 11).drawGrid(5, 10, canvas);
    background?.getSprite(10, 11).drawGrid(4, 10, canvas);
    background?.getSprite(10, 11).drawGrid(5, 9, canvas);
    background?.getSprite(10, 11).drawGrid(4, 9, canvas);
    background?.getSprite(10, 11).drawGrid(5, 8, canvas);
    background?.getSprite(10, 11).drawGrid(4, 8, canvas);
    background?.getSprite(10, 11).drawGrid(5, 7, canvas);
    background?.getSprite(10, 11).drawGrid(4, 7, canvas);
    // background
    //     ?.getSprite(10, 12)
    //     .render(canvas, position: Vector2(2 * defaultSize, 11 * defaultSize));
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

extension DrawGrid on Sprite {
  void drawGrid(int row, int column, Canvas canvas) {
    render(canvas, position: Vector2(row * 64.0, column * 64.0));
  }
}
