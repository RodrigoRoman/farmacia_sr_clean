import 'package:farmacia_cl/presentation/common/state_renderer/app_state_renderer.dart';
import 'package:farmacia_cl/presentation/resources/string_manager.dart';

abstract class FlowState{
  StateRendererType getStateRendererType();
  String getMessage();
}

class LoadingState extends FlowState{
  StateRendererType stateRendererType;
  String message;
  LoadingState({required this.stateRendererType, String? message}):message = message??AppStrings.loading;

  @override
  String getMessage() => message;
  
  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

class ErrorState extends FlowState{
  StateRendererType stateRendererType;
  String message;
  ErrorState({required this.stateRendererType,String? message}):message=message??AppStrings.error;

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
  }

  class ContentState extends FlowState{
    ContentState();
    
      @override
      String getMessage() => AppStrings.empty;
    
      @override
      StateRendererType getStateRendererType() => StateRendererType.CONTENT_SCREEN_STATE;
  }

  class EmptyState extends FlowState{
    String message;
    EmptyState({required this.message});
    
      @override
      String getMessage() => message;
    
      @override
      StateRendererType getStateRendererType() => StateRendererType.EMPTY_SCREEN_STATE;
  }
  
  class SuccessState extends FlowState{
    String message;
    SuccessState({required this.message});
    
      @override
      String getMessage() => message;
    
      @override
      StateRendererType getStateRendererType() => StateRendererType.POPUP_SUCCESS;
  }