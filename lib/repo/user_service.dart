import 'package:http/http.dart' as http;

import '../model/user_model.dart';
import 'api_result.dart';

class UserService  {
  static Future<Object> getUsers() async {
    try{
      var url = Uri.parse('https://randomuser.me/api?results=10');
      var response = await http.get(url);
      if(response.statusCode == 200){
        return ApiSuccess(
          code: response.statusCode,
          data: usersFromJson(response.body)
        );
      }
      return ApiError(
        code: 100,
        error: 'Invalid response'
      );
    } catch (e) {
      return ApiError(
        code: 500,
        error: e
      );
    }
  }

}
