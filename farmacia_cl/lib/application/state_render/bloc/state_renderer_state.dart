part of 'state_renderer_bloc.dart';

@freezed
class StateRendererState with _$StateRendererState{
  const factory StateRendererState({
    required String message,
    required Function retryAction,
    required String title,
    required StateRendererType stateRender
  }) = _StateRendererState;
  factory StateRendererState.initial() => StateRendererState(
    message:'',
    retryAction:()=>print(''),
    title:'',
    stateRender:StateRendererType.CONTENT_SCREEN_STATE
  );
}
