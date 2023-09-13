import 'package:flutter/foundation.dart';
import '../model/user_model.dart';
import '../repo/api_result.dart';
import '../repo/user_service.dart';

class UserViewModel extends ChangeNotifier {
  User users = User(
      userList: []
  );

  getUsers(String number) async {
    var response = await UserService.getUsers();
    if (response is ApiSuccess) {
      users = response.data as User;
      notifyListeners();
    }
  }

}
