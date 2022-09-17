import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:common_library/helpers/dimens_helper.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:common_library/di/di.dart';
import 'package:velocity_x/velocity_x.dart';

class UserListItemBuilder extends HookWidget {
  final User model;

  const UserListItemBuilder({
    required this.model,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.cardColor,
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width / 5.0,
                  height: Get.width / 5.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/08/45/81/084581e3155d339376bf1d0e17979dc6.jpg",
                      ),
                    ),
                  ),
                ).p(DimensHelper.paddingSM),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name ?? "",
                      style: Get.textTheme.subtitle1
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ).p(DimensHelper.paddingXSM),
                    Text(
                      model.name ?? "",
                      style: Get.textTheme.subtitle1
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ).p(DimensHelper.paddingXSM),
                  ],
                ).pOnly(
                  left: DimensHelper.paddingMD,
                  right: DimensHelper.paddingMD,
                ),
              ],
            ),
          ],
        ),
      ),
    ).onTap(
      () {},
    );
  }
}
