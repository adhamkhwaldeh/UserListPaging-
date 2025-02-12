import 'package:user_list_core/bloc/base/base_bloc.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/bloc/helpers/base_state_helper.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/repositories/implementations/iuser_repository.dart';

class UserBloc extends BaseBloc<BaseEvent, BaseState> {
  final IUserRepository repository;

  UserBloc(this.repository) : super(const BaseStateInitial()) {
    on<BaseEventLoadPagingList2>(
      (event, emit) async {
        emit(const BaseStateProgress());
        try {
          //Load the data from the api
          UserListResponse dt =
              await repository.pageList(event.page, event.limit);
          emit(const BaseStateProgressDismiss());
          if (dt.users.isNotEmpty) {
            emit(
              BaseStateListLoadedSuccessfully(
                data: dt.users,
                lastPage: dt.total <= event.page * event.limit,
              ),
            );
          } else {
            emit(const BaseStateNoDataFound());
          }
        } catch (error) {
          if (isClosed) return;
          emit(const BaseStateProgressDismiss());

          emit(BaseStateHelper.getEither(error as Exception));
        }
      },
    );
  }

  @override
  void dispose() {}
}
