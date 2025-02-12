import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:user_list_core/helpers/dimensions_helper.dart';
import 'package:velocity_x/velocity_x.dart';

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
          ).p(DimensionsHelper.paddingSM),
          Text(
            user.name,
            style: Get.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ).p(DimensionsHelper.paddingXSM),
          Text(
            user.gender.name,
            style: Get.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w400),
          ).p(DimensionsHelper.paddingXSM),
          Text(
            user.status.name,
            style: Get.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w400),
          ).p(DimensionsHelper.paddingXSM),
        ],
      ).centered(),
    );
  }
}
