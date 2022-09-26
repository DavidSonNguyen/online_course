import 'dart:js';

import 'package:flame/collisions.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flame/src/geometry/ray2.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/services.dart';

class VirtualWorld extends FlameGame with HasTappables, KeyboardEvents {
  final double width;
  final double height;

  late SpriteTile tile;
  late SpriteTile tile2;

  VirtualWorld({
    required this.width,
    required this.height,
  });

  @override
  Future<void> onLoad() async {
    tile = SpriteTile();
    tile2 = SpriteTile();
    await add(SpriteBackground(width, height));
    await add(tile);
    await add(tile2);
  }

  @override
  KeyEventResult onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    final isKeyDown = event is RawKeyDownEvent;

    final up = keysPressed.contains(LogicalKeyboardKey.arrowUp);

    final down = keysPressed.contains(LogicalKeyboardKey.arrowDown);

    final left = keysPressed.contains(LogicalKeyboardKey.arrowLeft);

    final right = keysPressed.contains(LogicalKeyboardKey.arrowRight);

    if (up && isKeyDown) {
      tile.moveUp();
      return KeyEventResult.handled;
    }

    if (down && isKeyDown) {
      tile.moveDown();
      return KeyEventResult.handled;
    }

    if (left && isKeyDown) {
      tile.moveLeft();
      return KeyEventResult.handled;
    }

    if (right && isKeyDown) {
      tile.moveRight();
      return KeyEventResult.handled;
    }

    if (event is RawKeyUpEvent &&
        event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      tile.standLeft();
      return KeyEventResult.handled;
    }

    if (event is RawKeyUpEvent &&
        event.logicalKey == LogicalKeyboardKey.arrowRight) {
      tile.standRight();
      return KeyEventResult.handled;
    }

    if (event is RawKeyUpEvent &&
        {LogicalKeyboardKey.arrowUp, LogicalKeyboardKey.arrowDown}
            .contains(event.logicalKey)) {
      tile.stand();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }
}

class SpriteTile extends SpriteAnimationComponent with HasGameRef {
  final time = 0.08;
  bool isRight = true;

  SpriteTile() : super(size: Vector2(250.0, 150.0));

  late SpriteAnimation knightIdleRight;
  late SpriteAnimation knightIdleLeft;
  late SpriteAnimation knightWalkLeft;
  late SpriteAnimation knightWalkRight;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    final image = await gameRef.images.load('knight.png');
    final spriteSheet = SpriteSheet.fromColumnsAndRows(
      image: image,
      columns: 10,
      rows: 4,
    );

    knightIdleRight = spriteSheet.createAnimation(
      row: 0,
      stepTime: time,
      from: 0,
      to: 9,
    );

    knightIdleLeft = spriteSheet.createAnimation(
      row: 1,
      stepTime: time,
      from: 0,
      to: 9,
    );

    knightWalkRight = spriteSheet.createAnimation(
      row: 2,
      stepTime: time,
      from: 0,
      to: 9,
    );

    knightWalkLeft = spriteSheet.createAnimation(
      row: 3,
      stepTime: time,
      from: 0,
      to: 9,
    );

    animation = knightIdleRight;
    position = gameRef.size / 2;
  }

  void standLeft() {
    animation = knightIdleLeft;
  }

  void standRight() {
    animation = knightIdleRight;
  }

  void stand() {
    if (isRight) {
      animation = knightIdleRight;
    } else {
      animation = knightIdleLeft;
    }
  }

  void walk() {
    if (isRight) {
      animation = knightWalkRight;
    } else {
      animation = knightWalkLeft;
    }
  }

  void moveUp() {
    walk();
    loopMove(() => position.y--);
  }

  void moveDown() {
    walk();
    loopMove(() => position.y++);
  }

  void moveLeft() {
    isRight = false;
    animation = knightWalkLeft;
    loopMove(() => position.x--);
  }

  void moveRight() {
    isRight = true;
    animation = knightWalkRight;
    loopMove(() => position.x++);
  }

  void loopMove(Function() move, {int loop = 10, int step = 0}) {
    if (step < loop) {
      move();
      loopMove(move, loop: loop, step: step + 1);
    }
  }
}

class SpriteBackground extends SpriteComponent with HasGameRef {
  final double width;
  final double height;

  SpriteBackground(this.width, this.height) : super();

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('backgroud_world.jpeg');
    size = Vector2(width, height);
  }
}
