import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar GetX"),
        centerTitle: true,
      ),
      body: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //   content: Text("kdksdjhfdjfkdfkdfkd"),
            //   action: SnackBarAction(
            //       label: "Cancel", onPressed: () => Text("batal")),
            // ));

            Get.snackbar("Input Data", "Berhasil diinput",
                snackPosition: SnackPosition.BOTTOM);
          },
          child: Text("SnackButton")),
    );
  }
}
