part of 'state_renderer_bloc.dart';

@freezed
abstract class StateRendererEvent with _$StateRendererEvent{
  const factory StateRendererEvent.popUpSuccess(String title,String message) = PopUpSuccess;
  const factory StateRendererEvent.popUpError(String title,String message) = PopUpError;
  const factory StateRendererEvent.popUpLoading(String title, String message) = PopUpLoading;
  const factory StateRendererEvent.fullErrorSreen(String title,String message) = FullErrorSreen;
  const factory StateRendererEvent.contentScreen() = ContentScreen;
  const factory StateRendererEvent.empty() = EmptySreen;
}