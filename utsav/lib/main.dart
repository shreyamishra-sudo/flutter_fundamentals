import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const UtsavApp());
}

class UtsavApp extends StatelessWidget {
  const UtsavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: UtsavLogoAnimation(),
        ),
      ),
    );
  }
}

class UtsavLogoAnimation extends StatefulWidget {
  const UtsavLogoAnimation({super.key});

  @override
  State<UtsavLogoAnimation> createState() => _UtsavLogoAnimationState();
}

class _UtsavLogoAnimationState extends State<UtsavLogoAnimation> with TickerProviderStateMixin {
  late AnimationController _blastController;
  late AnimationController _textController;
  late Animation<Offset> _textOffset;

  @override
  void initState() {
    super.initState();

    _blastController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _textController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _textOffset = Tween<Offset>(
      begin: const Offset(-2, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _textController,
      curve: Curves.easeInOut,
    ));

    _textController.forward();
  }

  @override
  void dispose() {
    _blastController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _blastController,
          builder: (context, child) {
            return CustomPaint(
              size: const Size(150, 150),
              painter: BlastPainter(_blastController.value),
            );
          },
        ),
        const SizedBox(width: 20),
        SlideTransition(
          position: _textOffset,
          child: const Text(
            'UTSAV',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}

class BlastPainter extends CustomPainter {
  final double progress;

  BlastPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeCap = StrokeCap.round..style = PaintingStyle.stroke..strokeWidth = 5;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = 30.0 + 10 * sin(progress * pi);

    // Calendar icon
    paint.color = Colors.deepPurple;
    final rect = Rect.fromCenter(center: center, width: 80, height: 80);
    canvas.drawRRect(RRect.fromRectAndRadius(rect, const Radius.circular(15)), paint);

    // Fireworks
    final colors = [
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.teal,
    ];

    for (int i = 0; i < colors.length; i++) {
      paint.color = colors[i];
      final angle = (2 * pi / colors.length) * i + progress * pi;
      final x = center.dx + radius * cos(angle);
      final y = center.dy + radius * sin(angle) - 40;
      canvas.drawLine(center, Offset(x, y), paint);
    }

    // Star
    final starPaint = Paint()..color = Colors.amber..style = PaintingStyle.fill;
    final starPath = Path();
    //const double r = 10;
    for (int i = 0; i < 5; i++) {
      double x = center.dx + 30 * cos((pi / 2) + i * 2 * pi / 5);
      double y = center.dy - 60 + 30 * sin((pi / 2) + i * 2 * pi / 5);
      if (i == 0) {
        starPath.moveTo(x, y);
      } else {
        starPath.lineTo(x, y);
      }
    }
    starPath.close();
    canvas.drawPath(starPath, starPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}