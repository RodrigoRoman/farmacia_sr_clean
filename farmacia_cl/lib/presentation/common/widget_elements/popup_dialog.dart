//Remove existing Dialog
import 'package:farmacia_cl/presentation/common/state_renderer/app_state_renderer.dart';
import 'package:farmacia_cl/presentation/resources/color_manager.dart';
import 'package:farmacia_cl/presentation/resources/const_values.dart';
import 'package:farmacia_cl/presentation/resources/constant_size_values.dart';
import 'package:farmacia_cl/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
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

//Dialog Functions

dismissDialog(BuildContext context){
      if(_isThereCurrentDialogShowing(context)){
        Navigator.of(context,rootNavigator: true).pop(true);

      }
    }

//Check if there is a Dialog
_isThereCurrentDialogShowing(BuildContext context)=> ModalRoute.of(context)?.isCurrent != true; 

//Triger PopUp 
showPopUp(BuildContext context, StateRendererType stateRendererType,String message,
  {String title = AppStrings.empty}){
    WidgetsBinding.instance.addPostFrameCallback((_)=>
      showDialog(
        context: context, 
        builder: (BuildContext context)=>SizedBox(
          height: AppSize.s22,
          width: AppSize.s12,
          child: StateRenderer(
            stateRendererType: stateRendererType, 
            message: message,
            title: title,
            retryActionFunction: (){}
            ),
        )
          )
      );
  }