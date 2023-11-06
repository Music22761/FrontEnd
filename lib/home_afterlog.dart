import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:putto/account/profile.dart';
import 'package:putto/detail.dart';
import 'package:putto/type/listAll.dart';

import 'home.dart';

class HomeAfterlog extends StatefulWidget {
  const HomeAfterlog({super.key});

  @override
  State<HomeAfterlog> createState() => _HomeAfterlog();
}

class _HomeAfterlog extends State<HomeAfterlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("HomePage"),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(MyHomePage());
                },
                icon: Icon(Icons.logout)),
            IconButton(
                onPressed: () {
                  Get.to(Profile());
                },
                icon: Icon(Icons.person))
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
                            Icon(Icons.book_online_rounded, size: 100),
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
                              Icon(Icons.book_online_rounded, size: 100),
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
                            Icon(Icons.book_online_rounded, size: 100),
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
                              Icon(Icons.book_online_rounded, size: 100),
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
