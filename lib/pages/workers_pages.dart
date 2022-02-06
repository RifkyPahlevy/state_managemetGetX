import 'package:aplikasi_getx/controler/workers_control.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkersPage extends StatelessWidget {
  const WorkersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myControl = Get.put(WorkersControl());
    return Scaffold(
      appBar: AppBar(
        title: Text("Workers member"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Perubahan saat ini ${myControl.data}")),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) => myControl.changeData(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Data",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
