import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:owwn_coding_challenge/paging/items/user_list_item_builder.dart';
import 'package:owwn_coding_challenge/paging/paging_options.dart';
import 'package:owwn_coding_challenge/paging/shimmer_list_builder.dart';
import 'package:owwn_coding_challenge/paging/widget_paginate_exception/empty_list_indicator.dart';
import 'package:owwn_coding_challenge/paging/widget_paginate_exception/error_indicator.dart';
import 'package:owwn_coding_challenge/paging/widget_paginate_exception/no_more_data_widget.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/bloc/user_bloc.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/di/di.dart';
import 'package:user_list_core/get_localization/l10S.dart';
import 'package:user_list_core/repositories/user_repository.dart';

class HomeComponent extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = useMemoized(
      () => UserBloc(getIt<UserRepository>()),
    );

    final PagingController<int, User> pagingController = useMemoized(
      () => PagingController<int, User>(
        firstPageKey: 1,
      ),
    );

    useBlocListener<UserBloc, BaseState<dynamic>>(
      bloc,
      (bloc, current, context) {
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
            final List<User> data = (state.data as UserListResponse).users;
            if (data.isEmpty) {
              pagingController.appendLastPage(data);
            } else {
              pagingController.appendPage(
                  data, PagingOptions.nextPage(pagingController.nextPageKey),);
            }
          },
          listLoadedSuccessfully: (state) {
            if (state.lastPage) {
              pagingController.appendLastPage(state.data as List<User>);
            } else {
              pagingController.appendPage(state.data as List<User>,
                  PagingOptions.nextPage(pagingController.nextPageKey),);
            }
          },
          orElse: () => {},
        );
      },
    );

    useEffect(
      () {
        pagingController.addPageRequestListener(
          (pageKey) {
            bloc.add(
              BaseEventLoadPagingList2(
                pageKey,
                PagingOptions.pagingSizeSmall,
              ),
            );
          },
        );
        return () => {pagingController.dispose()};
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(L10S.Home.tr),
      ),
      body: RefreshIndicator(
        onRefresh: () => Future(
          () => pagingController.refresh(),
        ),
        child: PagedListView.separated(
          pagingController: pagingController,
          builderDelegate: PagedChildBuilderDelegate<User>(
            itemBuilder: (context, model, index) => UserListItemBuilder(
              model: model,
            ),
            firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(
              error: pagingController.error,
              onTryAgain: () => pagingController.refresh(),
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
