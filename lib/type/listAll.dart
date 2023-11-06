import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:putto/detail.dart';

class ListAll extends StatefulWidget {
  const ListAll({super.key});

  @override
  State<ListAll> createState() => _ListAll();
}

class _ListAll extends State<ListAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("data"),
      ),
      body: Center(
        child: Card(
          child: ListTile(
            leading: FlutterLogo(size: 72.0),
            title: Text('Head'),
            subtitle:
                Text('A sufficiently long subtitle warrants three lines.'),
            trailing: ElevatedButton.icon(
                onPressed: () {
                  Get.to(Detail());
                },
                icon: Icon(Icons.forward),
                label: Text("Go to")),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
