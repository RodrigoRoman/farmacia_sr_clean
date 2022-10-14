import 'package:farmacia_cl/presentation/resources/asset_names.dart';
import 'package:farmacia_cl/presentation/resources/color_manager.dart';
import 'package:farmacia_cl/presentation/resources/const_values.dart';
import 'package:farmacia_cl/presentation/resources/constant_size_values.dart';
import 'package:farmacia_cl/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class StateRenderer extends StatelessWidget{
  final  String? message;
  final String? title;
  final Function retryActionFunction;
  final StateRendererType stateRendererType;
  const StateRenderer({
    required this.stateRendererType,
    String? message,
    String? title,
    required this.retryActionFunction,
    Key? key})
      :message = message??AppStrings.loading,
       title = title??AppStrings.empty,
       super (key: key);
  @override
  Widget build(BuildContext context) {
    return StateAppWidget(
      stateRendererType:stateRendererType,
      title:title,
      message:message,
      retryActionFunction:retryActionFunction
      );
  }

}

class StateAppWidget extends StatelessWidget {
  final StateRendererType stateRendererType;
  final String message;
  final String? title;
  final Function retryActionFunction;
  const StateAppWidget({required this.stateRendererType,required this.title,required this.retryActionFunction, message,Key? key}) :  message = message??AppStrings.empty, super(key: key);

  @override
  Widget build(BuildContext context) {
    switch(stateRendererType) {
      case StateRendererType.POPUP_LOADING_STATE:
        return const PopUpDialog(children:[AnimatedImage(animationName:AppAssetNames.loading)]);
      case StateRendererType.POPUP_ERROR_STATE:
        return PopUpDialog(
          children:[
            const AnimatedImage(animationName:AppAssetNames.loading),
            StateMessage(message: message),
            const RetryButton(buttonTitle: AppStrings.ok)
            ]
          );
      case StateRendererType.POPUP_SUCCESS:
        return PopUpDialog(
          children:[
            const AnimatedImage(animationName:AppAssetNames.success),
            StateMessage(message: message),
            const RetryButton(buttonTitle: AppStrings.ok)
            ]
          );
      case StateRendererType.FULL_SCREEN_LOADING_STATE:
        return ItemInColumn(
          children:[
            const AnimatedImage(animationName:AppAssetNames.loading),
            StateMessage(message: message),
            ]
          );
      case StateRendererType.FULL_SCREEN_ERROR_STATE:
        return ItemInColumn(
            children:[
              const AnimatedImage(animationName:AppAssetNames.error),
              StateMessage(message: message),
              const RetryButton(buttonTitle: AppStrings.retry)
              ]
            );
      case StateRendererType.CONTENT_SCREEN_STATE:
        return Container();
      case StateRendererType.EMPTY_SCREEN_STATE:
        return const ItemInColumn(children: [AnimatedImage(animationName: AppAssetNames.lost)]);
      default:
        return const PopUpDialog(children:[AnimatedImage(animationName:AppAssetNames.lost)]);
    }
  }
}




class PopUpDialog extends StatelessWidget {
  final List<Widget> children;
  const PopUpDialog({required this.children,Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s14)
      ),
      elevation: AppSize.s1_5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(AppSize.s14),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius:AppSize.s12,
              offset:Offset(AppSize.s0,AppSize.s12)
            )
          ]
        ),
        child: DialogContent(children:children),
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  final List<Widget> children;
  const DialogContent({required this.children,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      mainAxisSize:  MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}

class AnimatedImage extends StatelessWidget {
  final String animationName;
  const AnimatedImage({required this.animationName,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return SizedBox(
          width: constraints.maxWidth/AppSizePercents.per75,
          height: constraints.maxHeight/AppSizePercents.per75,
          child: Lottie.asset(animationName),
        );
      }
    );
  }
}
class StateMessage extends StatelessWidget {
  final String message;
  const StateMessage({required this.message,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s18),
        child: Text(
          message,
          style:Theme.of(context).textTheme.headline3,
        ),
      )
    );
  }
}

class RetryButton extends StatelessWidget {
  final String buttonTitle;
  const RetryButton({required this.buttonTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.s8),
            child: SizedBox(
              width: constraints.maxWidth/AppSizePercents.per75,
              height: constraints.maxHeight/AppSizePercents.per75,
              child: ElevatedButton(
                child: Text(buttonTitle),
                onPressed: ()=>print('buttonTitlePressed'),
              ),
            ),
          ),
        );
      }
    );
  }
}

class ItemInColumn extends StatelessWidget {
  final List<Widget> children;
  const ItemInColumn({required this.children,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      )
    );
  }
}
