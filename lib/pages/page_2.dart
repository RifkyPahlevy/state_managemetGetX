import 'package:aplikasi_getx/controler/depedency_getX.dart';
import 'package:aplikasi_getx/pages/page_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  final DependencyContro myControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dua'),
      ),
      body: Center(
        child: Text(
            "Nama : ${myControl.data['nama']} Umur : ${myControl.data['umur']}"),
      ),
    );
  }
}
