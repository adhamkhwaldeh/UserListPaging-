import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:owwn_coding_challenge/paging/paging_options.dart';
import 'package:common_library/get_localization/base_l10s.dart';
import 'package:get/get.dart';

class NoMoreDataWidget extends HookWidget {
  const NoMoreDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataFlag = useState(false);
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
    }, []);

    return Container(
      child: dataFlag.value
          ? Container()
          : Center(
              child: Text(BaseL10S.noMoreData.tr),
            ),
    );
  }
}
