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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenW(context) * 0.17),
      child: Stack(
        children: [
          SizedBox(
            height: getScreenW(context) * 0.55 / 3,
            width: getScreenW(context) * 0.55,
            child: CustomPaint(
              painter: CardShape(color, false),
            ),
          ),
          Positioned(
            left: 8,
            child: SizedBox(
              height: getScreenW(context) * 0.56 / 3,
              width: getScreenW(context) * 0.55,
              child: CustomPaint(
                painter: CardShape(color, true),
                child: Transform(
                  alignment: Alignment.center,
                  transform: isFlip
                      ? Matrix4.rotationY(math.pi)
                      : Matrix4.rotationY(math.pi - math.pi),
                  child: Column(
                    children: [
                      Text(
                        totalValue,
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: getScreenW(context) * 0.095,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        transactionType,
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: getScreenW(context) * 0.045,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
