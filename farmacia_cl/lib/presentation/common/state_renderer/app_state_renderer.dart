import 'package:farmacia_cl/presentation/resources/color_manager.dart';
import 'package:farmacia_cl/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';


enum StateRendererType {
  // POPUP STATES
  POPUP_LOADING_STATE,
  POPUP_ERROR_STATE,
  POPUP_SUCCESS,
  // FULL SCREEN STATES
  FULL_SCREEN_LOADING_STATE,
  FULL_SCREEN_ERROR_STATE,
  CONTENT_SCREEN_STATE, // THE UI OF THE SCREEN
  EMPTY_SCREEN_STATE // EMPTY VIEW WHEN WE RECEIVE NO DATA FROM API SIDE FOR LIST SCREEN
}

class StateRenderer extends StatelessWidget{
  StateRendererType? stateRendererType;
  String? message;
  String? title;
  Function? retryActionFunction;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}

class StateAppWidget extends StatelessWidget {
  const StateAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (StateRendererType) {
      case StateRendererType.POPUP_LOADING_STATE:
        return Container();
      case StateRendererType.POPUP_ERROR_STATE:
      case StateRendererType.POPUP_SUCCESS:
      case StateRendererType.FULL_SCREEN_LOADING_STATE:
      case StateRendererType.FULL_SCREEN_ERROR_STATE:
      case StateRendererType.CONTENT_SCREEN_STATE:
      case StateRendererType.EMPTY_SCREEN_STATE:
        break;
      default:
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
  final String imageName;
  const AnimatedImage({required this.imageName,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return SizedBox(
          width: constraints.maxWidth/AppSizePercents.per75,
          height: constraints.maxHeight/AppSizePercents.per75,
          child: Image.asset(imageName),
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
        padding: EdgeInsets.all(AppSize.s18),
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
