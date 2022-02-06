import 'package:aplikasi_getx/controler/depedency_getX.dart';
import 'package:aplikasi_getx/pages/page_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  final myControl = Get.put(DependencyContro());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Nama : ${myControl.data['nama']} Umur : ${myControl.data['umur']}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageDua(),
                      ));
                },
                child: Text("Next Page"))
          ],
        ),
      ),
    );
  }
}
