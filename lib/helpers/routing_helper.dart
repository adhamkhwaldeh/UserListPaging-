import 'package:get/get.dart';
import 'package:owwn_coding_challenge/components/sign_in_component.dart';
import 'package:owwn_coding_challenge/components/home_component.dart';

class RoutingHelper {
  static void startHomeComponent() => Get.offAll(() => HomeComponent());

    static void startSignInComponent() => Get.offAll(() => SignInComponent());
}
