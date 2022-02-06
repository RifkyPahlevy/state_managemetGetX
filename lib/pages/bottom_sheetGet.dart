import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomGetX extends StatelessWidget {
  const BottomGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom GetX"),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 150,
                    color: Colors.amber,
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text("Media"),
                        ),
                        ListTile(
                          title: Text("Media"),
                        ),
                        ListTile(
                          title: Text("Media"),
                        ),
                        ListTile(
                          title: Text("Media"),
                        ),
                        ListTile(
                          title: Text("Media"),
                        ),
                        ListTile(
                          title: Text("Media"),
                        )
                      ],
                    ),
                  ),
                );
              },
              child: Text("Bottom Sheet")),
        ));
  }
}
