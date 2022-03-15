import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../util/size_screen.dart';

class TotalCardWidget extends StatelessWidget {
  final Color color;
  final String totalValue;
  final String transactionType;
  final bool isFlip;

  const TotalCardWidget({
    required this.color,
    required this.totalValue,
    required this.transactionType,
    this.isFlip = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: getScreenW(context) * 0.45 / 3,
          width: getScreenW(context) * 0.43,
          child: isFlip
              ? Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: CustomPaint(
                    painter: CardShape(color, false),
                  ),
                )
              : CustomPaint(
                  painter: CardShape(color, false),
                ),
        ),
        Positioned(
          right: isFlip ? 7 : 0,
          left: isFlip ? 0 : 7,
          child: SizedBox(
            height: getScreenW(context) * 0.460 / 3,
            width: getScreenW(context) * 0.45,
            child: isFlip
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: CustomPaint(
                      painter: CardShape(color, true),
                    ),
                  )
                : CustomPaint(
                    painter: CardShape(color, true),
                  ),
          ),
        ),
        Positioned(
          top: getScreenH(context) * 0.01,
          left: getScreenW(context) * 0.06,
          child: Text(
            totalValue,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: getScreenW(context) * 0.075,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          top: getScreenH(context) * 0.055,
          left:
              isFlip ? getScreenW(context) * 0.14 : getScreenW(context) * 0.18,
          child: Text(
            transactionType,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: getScreenW(context) * 0.035,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}

class CardShape extends CustomPainter {
  final Color color;
  final bool isFill;
  CardShape(this.color, this.isFill);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = isFill ? PaintingStyle.fill : PaintingStyle.stroke
      ..strokeWidth = isFill ? 0 : 2;

    Path path = Path();
    path.moveTo(0, size.height * 0.7500000);
    path.lineTo(size.width * 0.0833333, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.2500000);
    path.lineTo(size.width * 0.9166667, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.7500000);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
