import 'package:aplikasi_getx/pages/bottom_sheetGet.dart';
import 'package:aplikasi_getx/pages/dialog_getX.dart';
import 'package:aplikasi_getx/pages/page_1.dart';
import 'package:aplikasi_getx/pages/snack_bar.dart';
import 'package:aplikasi_getx/pages/state_model.dart';
import 'package:aplikasi_getx/pages/workers_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSatu(),
    );
  }
}
