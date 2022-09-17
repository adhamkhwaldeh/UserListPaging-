import 'package:get/get.dart';
import 'package:owwn_coding_challenge/components/sign_in_component.dart';
import 'package:owwn_coding_challenge/components/home_component.dart';
import 'package:owwn_coding_challenge/components/user_details_component.dart';
import 'package:user_list_core/data/models/user.dart';

class RoutingHelper {
  static void startHomeComponent() => Get.offAll(() => HomeComponent());

  static void startSignInComponent() => Get.offAll(() => SignInComponent());

  static void startUserDetailsComponent(User user) =>
      Get.to(() => UserDetailsComponent(user));
}
