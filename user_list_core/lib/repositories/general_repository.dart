import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class GeneralRepository {
  final SharedPreferences sharedPreferences;

  static const String _userTag = "User_Tag";

  GeneralRepository(
    this.sharedPreferences,
  );

  setLoggedUser(SignInResponse loggedUser) async {
    await sharedPreferences.setString(_userTag, json.encode(loggedUser));
  }

  Future<SignInResponse?> getLoggedUser() async {
    String? user = sharedPreferences.getString(_userTag);
    if ((user?.isNotEmpty ?? false) == true) {
      return SignInResponse.fromJson(
          Map<String, dynamic>.from(json.decode(user!)));
    }
    return null;
  }

  void clearLoggedUser() async {
    await sharedPreferences.remove(_userTag);
  }
}
