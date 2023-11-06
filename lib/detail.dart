import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatefulWidget {
  late String tname;

  Detail({super.key});

  @override
  State<Detail> createState() => _Detail();
}

class _Detail extends State<Detail> {
  late String tname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Protect"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_outlined),
              label: Text("Back"))
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 238, 225, 111),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Card(
                      child: ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Head'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const SizedBox(
                        width: 500,
                        height: 100,
                        child: Center(
                            child: Text(
                                'Outlined Cardasdfhgsaldkfgsakdjflksadjhflsaudfusahdfsjahdfuashdfkjashdfluashdfkjahsdflusadfkjashdlfusyadfhaslkudhfsakjhdfsaudhflskadjhflsuiadhfksajdhflsadhflsauhdflsuahdfiusahdfshadfsfds')),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
