import 'dart:ui';

import 'package:flame/components.dart';

class EnemyComponent extends Component with HasGameRef {
  final double defaultSize = 64.0;
  @override
  Future<void>? onLoad() {
    return super.onLoad();
  }

  @override
  void render(Canvas canvas) async {
    // canvas.drawLine(Offset(defaultSize, 0), Offset(defaultSize, 1.5 * defaultSize), Paint());
    Path enemyPath = Path();
    enemyPath.addPolygon(
        [Offset(defaultSize, 0), Offset(defaultSize, 1.5 * defaultSize),Offset(2*defaultSize,1.5*defaultSize)],
        false);
    canvas.drawPath(enemyPath, Paint());
  }
}
