import 'package:farmacia_cl/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class RetryButton extends StatelessWidget {
  final String buttonTitle;
  const RetryButton({required this.buttonTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.s8),
            child: SizedBox(
              width: 70,
              height: 70,
              child: ElevatedButton(
                child: Text(buttonTitle),
                onPressed: ()=>print('buttonTitlePressed'),
              ),
            ),
          ),
        );
    
    // return LayoutBuilder(
    //   builder: (context,constraints) {
    //     return Center(
    //       child: Padding(
    //         padding: const EdgeInsets.all(AppSize.s8),
    //         child: SizedBox(
    //           width: constraints.maxWidth/AppSizePercents.per75,
    //           height: constraints.maxHeight/AppSizePercents.per75,
    //           child: ElevatedButton(
    //             child: Text(buttonTitle),
    //             onPressed: ()=>print('buttonTitlePressed'),
    //           ),
    //         ),
    //       ),
    //     );
    //   }
    // );
  }
}