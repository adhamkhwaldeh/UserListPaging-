import 'package:user_list_core/data/enums/gender.dart';
import 'package:user_list_core/data/enums/status.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';

class DummyDataHelper {
  static final String correctEmail = "xyz@gmail.com";

  static final SignInResponse userResponse = SignInResponse(
    access_token:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTU5Nzg1NTcsImlkZW50aXR5IjoiNTg3NTE0ODMtODE4ZS00YWVjLWI0YmYtZWMwZjFiODkyNWI1IiwidmFyaWV0eSI6IkFVVEgifQ.5EWR34YJOJPxRBQh7np12woSZZJ8ERcsD_BEkrWkMFM',
    refresh_token:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTU5Nzg4NTcsImlkZW50aXR5IjoiNTg3NTE0ODMtODE4ZS00YWVjLWI0YmYtZWMwZjFiODkyNWI1IiwidmFyaWV0eSI6IlJFRlJFU0hfQVVUSCJ9.curbnireZmH9zcTTUYr7VVkQa-CLOWuf7JKKW7Av_hY',
  );

  static List<User> userList = List.of(
    [
      User(id: "1", name: "John", status: Status.active, gender: Gender.male),
      User(id: "2", name: "Adham", status: Status.active, gender: Gender.male),
      User(
          id: "3", name: "Joury", status: Status.active, gender: Gender.female),
      User(id: "4", name: "Jawad", status: Status.active, gender: Gender.male),
      User(
          id: "5",
          name: "Wateen",
          status: Status.active,
          gender: Gender.female),
      User(id: "6", name: "Raied", status: Status.active, gender: Gender.male),
      User(id: "7", name: "Ammar", status: Status.active, gender: Gender.male),
      User(id: "8", name: "Abd", status: Status.active, gender: Gender.male),
      User(
          id: "8", name: "Hayat", status: Status.active, gender: Gender.female),
      User(
          id: "8", name: "Reham", status: Status.active, gender: Gender.female),
    ],
  );
}
