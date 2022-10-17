import 'package:bloc/bloc.dart';
import 'package:farmacia_cl/presentation/resources/const_values.dart';
import 'package:farmacia_cl/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'state_renderer_event.dart';
part 'state_renderer_state.dart';
part 'state_renderer_bloc.freezed.dart';

@injectable
class StateRendererBloc extends Bloc<StateRendererEvent, StateRendererState> {
  StateRendererBloc() : super(StateRendererState.initial()) {
    on<PopUpSuccess>((event, emit) {
      emit(state.copyWith(
        title: event.title,
        message: event.message,
        retryAction: ()=>print('clicked'),
        stateRender: StateRendererType.POPUP_SUCCESS
      ));
    });
    on<PopUpError>((event, emit) {
      emit(state.copyWith(
        title: event.title,
        message: event.message,
        retryAction: ()=>print('clicked'),
        stateRender: StateRendererType.POPUP_ERROR_STATE
      ));
    });
    on<PopUpServerError>((event, emit) {
      emit(state.copyWith(
        title: event.title,
        message: event.message,
        retryAction: ()=>print('clicked'),
        stateRender: StateRendererType.POPUP_SERVER_ERROR_STATE
      ));
    });
    on<PopUpLoading>((event, emit) {
      emit(state.copyWith(
        title: event.title,
        message: event.message,
        retryAction: ()=>print('clicked'),
        stateRender: StateRendererType.POPUP_LOADING_STATE
      ));
    });
    on<FullErrorSreen>((event, emit) {
      emit(state.copyWith(
        title: event.title,
        message: event.message,
        retryAction: ()=>print('clicked'),
        stateRender: StateRendererType.FULL_SCREEN_ERROR_STATE
      ));
    });
    on<EmptySreen>((event, emit) {
      emit(state.copyWith(
        retryAction: ()=>print('clicked'),
        stateRender: StateRendererType.EMPTY_SCREEN_STATE
      ));
    });
    on<ContentScreen>((event,emit){
      emit(state.copyWith(
        retryAction: ()=>print('clicked'),
        stateRender: StateRendererType.CONTENT_SCREEN_STATE
      ));
    });
  }
}
