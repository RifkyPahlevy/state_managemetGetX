import 'package:aplikasi_getx/controler/home_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleReactiveState extends StatelessWidget {
  final myControl = Get.put(HomeControl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text(
                    "${myControl.nama}",
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () {
                    myControl.updateNama();
                  },
                  child: Text("Tambah")),
              ElevatedButton(
                  onPressed: () {
                    myControl.reset();
                  },
                  child: Text('Kurang')),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text(
                    "${myControl.data}",
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () {
                    myControl.increment();
                  },
                  child: Text("Tambah")),
              ElevatedButton(
                  onPressed: () {
                    myControl.decrement();
                  },
                  child: Text('Kurang')),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text(
                    "${myControl.dataBool}",
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () {
                    myControl.gantiBoolean();
                  },
                  child: Text("Ganti Boolean")),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text(
                    "${myControl.dataList}",
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () {
                    myControl.tambahList();
                  },
                  child: Text("Tambah")),
              ElevatedButton(
                  onPressed: () {
                    myControl.hapusList();
                  },
                  child: Text('Kurang')),
            ],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Obx(() => Text(
                "${myControl.dataSet}",
                style: TextStyle(fontSize: 10),
              )),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    myControl.tambahSet();
                  },
                  child: Text("tambah")),
              ElevatedButton(
                  onPressed: () {
                    myControl.ubahSet();
                  },
                  child: Text("Rubah"))
            ],
          )
        ]),
        Divider(
          thickness: 5,
        ),
        
        ListTile(
          title: Text("${myControl.myMap['nama']}"),
          leading: CircleAvatar(
            child: Text("${myControl.myMap['id']}"),
          ),
          subtitle: Text("${myControl.myMap['Umur']}"),
        )
      ],
    ));
  }
}
