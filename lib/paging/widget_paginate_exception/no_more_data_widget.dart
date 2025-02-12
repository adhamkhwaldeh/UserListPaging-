import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:owwn_coding_challenge/paging/paging_options.dart';
import 'package:user_list_core/get_localization/base_l10s.dart';

class NoMoreDataWidget extends HookWidget {
  const NoMoreDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dataFlag = useState(false);
    useEffect(() {
      Timer(
        const Duration(seconds: PagingOptions.moreDataTimeout),
        () {
          try {
            dataFlag.value = true;
          } catch (ex) {
            log("");
          }
        },
      );
      return () {};
    }, [],);

    return Container(
      child: dataFlag.value
          ? Container()
          : Center(
              child: Text(BaseL10S.noMoreData.tr),
            ),
    );
  }
}
