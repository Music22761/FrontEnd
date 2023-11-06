import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/user.dart';
import 'models/users.dart';

class Services {
  static Future<Users> getUsers() async {
    try {
      final response =
          await http.get(Uri.parse("http://localhost:8080/api/users"));
      if (200 == response.statusCode) {
        return parseUsers(response.body);
      } else {
        return Users();
      }
    } catch (e) {
      print('Error ${e.toString()}');
      return Users();
    }
  }

  Future<void> insertData(String img, String name, String email, String password) async {
    final url = Uri.parse(
        'http://localhost:8080/api/users'); // เปลี่ยน URL ของ API ตามที่คุณใช้งาน

    final Map<String, String> data = {
      "img":img,
      "name": name,
      "email": email,
      "password": password,
    };

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      // สำเร็จ
      print('Data inserted successfully.');
    } else {
      // เกิดข้อผิดพลาด
      print('Failed to insert data.');
    }
  }

  static Users parseUsers(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    List<User> users = parsed.map<User>((json) => User.fromJson(json)).toList();
    Users u = Users();
    u.users = users;
    // for (var i = 0; i < u.users.length; i++) {
    //   print(u.users[i].name);
    // }
    return u;
  }
}
