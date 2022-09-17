import 'package:common_library/helpers/dimens_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class UserDetailsComponent extends StatelessWidget {
  final User user;
  const UserDetailsComponent(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Hero(
            tag: "hero_message_${user.id}",
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
          ).p(DimensHelper.paddingSM),
          Text(
            user.name ?? "",
            style:
                Get.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w600),
          ).p(DimensHelper.paddingXSM),
          Text(
            user.gender.name ?? "",
            style:
                Get.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w400),
          ).p(DimensHelper.paddingXSM),
          Text(
            user.status.name ?? "",
            style:
                Get.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w400),
          ).p(DimensHelper.paddingXSM),
        ],
      ).centered(),
    );
  }
}
