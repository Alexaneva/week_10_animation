import 'package:flutter/material.dart';

class Island extends StatefulWidget {
  const Island({Key? key}) : super(key: key);

  @override
  State<Island> createState() => _IslandState();
}

class _IslandState extends State<Island> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: controller,
      alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200), // Image border
           // Image radius
            child: Image.asset('assets/it.jpg'),
          ),

    );
  }
}
