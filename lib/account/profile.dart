import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Services.dart';
import '../debouncer.dart';
import '../models/users.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _nameState();
}

class _nameState extends State<Profile> { 
  
  late Users users;
  bool isLoading = false;
  late String title;

  final debouncer = Debouncer(milliseconds: 3000);

  @override
  void initState() {
    isLoading = true;
    super.initState();
    title = 'Loading users...';
    users = Users();

    Services.getUsers().then((usersFromServer) {
      setState(() {
        users = usersFromServer;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text("Profile"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
              label: Text("Back"))
        ],
      ),
      body: ListView(
        children: [
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(
                            'assets/umaru.jpg'), // กำหนดรูปโปรไฟล์ที่คุณต้องการแสดง
                      ),
                    ),
                    TextProfile("${users.users[0].name}"),
                    TextProfile("${users.users[0].email}"),
                    TextProfile("${users.users[0].password}"),
                  ],
                )
        ],
      ),
    );
  }

  Widget TextProfile(String data) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: 300,
        height: 100,
        child: Center(child: Text(data)),
      ),
    );
  }
}
