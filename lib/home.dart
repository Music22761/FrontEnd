import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:putto/LoginPage.dart';
import 'package:putto/detail.dart';
import 'package:putto/type/listAll.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("HomePage"),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(LoginPage());
                },
                icon: Icon(Icons.login))
          ],
        ),
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(Detail());
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                  'assets/study.png'), // กำหนดรูปโปรไฟล์ที่คุณต้องการแสดง
                            ),
                            Text("Detail")
                          ],
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(const ListAll());
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                    'assets/luck.png'), // กำหนดรูปโปรไฟล์ที่คุณต้องการแสดง
                              ),
                              Text("ListAll")
                            ],
                          ))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(Detail());
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                  'assets/protect.png'), // กำหนดรูปโปรไฟล์ที่คุณต้องการแสดง
                            ),
                            Text("Detail")
                          ],
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(const ListAll());
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                    'assets/work.png'), // กำหนดรูปโปรไฟล์ที่คุณต้องการแสดง
                              ),
                              Text("ListAll")
                            ],
                          ))),
                ],
              ),
            )
          ]),
        ));
  }
}
