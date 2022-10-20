import 'package:farmacia_cl/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  // final List<Color> gradientColors;
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  late AnimationController animationController; 
  double radius = 0.5;
  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync:this, duration:const Duration(milliseconds: 1000));
    animationController.repeat(reverse: true);
    
  }
  @
  override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;

        });
        animationController.forward();
        // Future.delayed(Duration(milliseconds: 1200),
        // () => Navigator.popAndPushNamed(context, AuthScreen.routeName));
      },
      child:  AnimatedBuilder(
        animation: animationController,
        builder:(context,_)=>AnimatedContainer(
        decoration: BoxDecoration(
          // color: Colors.blue
          gradient: RadialGradient( 
            colors: lightGradientColors, 
            tileMode: TileMode.clamp, 
            stops:  selected?[0.6,1]:[0.45,0.5],
            radius: selected?1.5:0.5+(animationController.value/3)
          ), 
        ),
        child:  Center(child: Transform.scale(scale:selected?0.2+(animationController.value/3):0.2+(animationController.value/5), child: Image.asset('assets/logos/farmacia_sr_ch.png'))),
        duration: const Duration(milliseconds: 1000),
        curve:  Curves.slowMiddle
        ),
      )
    );  
  }
}
