import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:owwn_coding_challenge/helpers/routing_helper.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:user_list_core/helpers/dimensions_helper.dart';
import 'package:velocity_x/velocity_x.dart';

class UserListItemBuilder extends HookWidget {
  final User model;

  const UserListItemBuilder({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Get.theme.cardColor,
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: "hero_message_${model.id}",
                  child: Container(
                    width: Get.width / 8.0,
                    height: Get.width / 8.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                          "https://i.pinimg.com/originals/08/45/81/084581e3155d339376bf1d0e17979dc6.jpg",
                        ),
                      ),
                    ),
                  ),
                ).p(DimensionsHelper.paddingSM),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name,
                      style: Get.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ).p(DimensionsHelper.paddingXSM),
                    Text(
                      model.gender.name,
                      style: Get.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ).p(DimensionsHelper.paddingXSM),
                    Text(
                      model.status.name,
                      style: Get.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ).p(DimensionsHelper.paddingXSM),
                  ],
                ).pOnly(
                  left: DimensionsHelper.paddingMD,
                  right: DimensionsHelper.paddingMD,
                ),
              ],
            ),
          ],
        ),
      ),
    ).onTap(
      () {
        RoutingHelper.startUserDetailsComponent(model);
      },
    );
  }
}
