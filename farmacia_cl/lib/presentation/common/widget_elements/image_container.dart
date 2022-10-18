import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedImage extends StatelessWidget {
  final String animationName;
  const AnimatedImage({required this.animationName,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 400,
      height: 400,
      child: Lottie.asset(animationName),
    );
    // LayoutBuilder(
    //   builder: (context,constraints) {
    //     return SizedBox(
    //       width: constraints.maxWidth/AppSizePercents.per75,
    //       height: constraints.maxHeight/AppSizePercents.per75,
    //       child: Lottie.asset(animationName),
    //     );
    //   }
    // );
  }
}