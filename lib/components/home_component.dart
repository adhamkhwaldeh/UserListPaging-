import 'package:common_library/bloc/base_event/base_event.dart';
import 'package:common_library/bloc/base_state/base_state.dart';
import 'package:common_library/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:owwn_coding_challenge/paging/items/user_list_item_builder.dart';
import 'package:owwn_coding_challenge/paging/paging_options.dart';
import 'package:owwn_coding_challenge/paging/shimmer_list_builder.dart';
import 'package:owwn_coding_challenge/paging/widget_paginate_exception/empty_list_indicator.dart';
import 'package:owwn_coding_challenge/paging/widget_paginate_exception/error_indicator.dart';
import 'package:owwn_coding_challenge/paging/widget_paginate_exception/no_more_data_widget.dart';
import 'package:user_list_core/bloc/user_bloc.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/get_localization/l10S.dart';
import 'package:get/get.dart';
import 'package:user_list_core/repositories/user_repository.dart';

class HomeComponent extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = useMemoized(
      () => UserBloc(getIt<UserRepository>()),
    );

    PagingController<int, User> _pagingController = useMemoized(
      () => PagingController<int, User>(
        firstPageKey: 1,
      ),
    );

    final userBlocState = useBloc<UserBloc, BaseState<dynamic>>(
      bloc: bloc,
      onEmitted: (context, previous, current) {
        current.maybeMap(
          initial: (state) => {},
          progress: (state) => {},
          dismissProgress: (state) => {},
          noDataFound: (state) => {},
          noInternetConnection: (state) => {},
          internalServerError: (state) => {},
          notAuthorize: (state) => {},
          failure: (state) => {},
          loadedSuccessfully: (state) {
            List<User> data = (state.data as UserListResponse).users;
            if (data.isEmpty) {
              _pagingController.appendLastPage(data);
            } else {
              _pagingController.appendPage(
                  data, PagingOptions.nextPage(_pagingController.nextPageKey));
            }
          },
          listLoadedSuccessfully: (state) {
            if (state.lastPage) {
              _pagingController.appendLastPage(state.data as List<User>);
            } else {
              _pagingController.appendPage(state.data as List<User>,
                  PagingOptions.nextPage(_pagingController.nextPageKey));
            }
          },
          orElse: () => {},
        );
        return false;
      },
    );

    useEffect(
      () {
        _pagingController.addPageRequestListener(
          (pageKey) {
            bloc.add(
              BaseEventLoadPagingList2(
                pageKey,
                PagingOptions.pagingSizeSmall,
              ),
            );
          },
        );
        return () => {_pagingController.dispose()};
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(L10S.Home.tr),
      ),
      body: RefreshIndicator(
        onRefresh: () => Future(
          () => _pagingController.refresh(),
        ),
        child: PagedListView.separated(
          addAutomaticKeepAlives: true,
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<User>(
            itemBuilder: (context, model, index) => UserListItemBuilder(
              model: model,
            ),
            firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(
              error: _pagingController.error,
              onTryAgain: () => _pagingController.refresh(),
            ),
            noItemsFoundIndicatorBuilder: (context) =>
                const EmptyListIndicator(),
            newPageErrorIndicatorBuilder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
            firstPageProgressIndicatorBuilder: (context) => ShimmerListBuilder(
              UserListItemBuilder(
                model: User(),
              ),
              PagingOptions.shimmerPlaceHolderSize,
            ),
            newPageProgressIndicatorBuilder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
            noMoreItemsIndicatorBuilder: (context) => const NoMoreDataWidget(),
          ),
          padding: const EdgeInsets.all(16),
          separatorBuilder: (context, index) => Divider(
            // thickness: 2,
            height:
                Get.theme.inputDecorationTheme.enabledBorder?.borderSide.width,
            color:
                Get.theme.inputDecorationTheme.enabledBorder?.borderSide.color,
          ),
        ),
      ),
    );
  }
}
