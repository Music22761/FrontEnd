import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:putto/LoginPage.dart';
import 'package:putto/Services.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _pictureController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Services _services = Services();

  void _register() {
    // ทำการตรวจสอบข้อมูลการลงทะเบียนที่นี่
    String img = _pictureController.text;
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    // ตรวจสอบข้อมูลและดำเนินการตามต้องการ

    _services.insertData(img,name, email, password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_box),
        title: Text('Register'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(
              controller: _pictureController,
              decoration: InputDecoration(labelText: 'Picture'),
            ),

            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),

            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _register();
                Get.to(LoginPage());
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
