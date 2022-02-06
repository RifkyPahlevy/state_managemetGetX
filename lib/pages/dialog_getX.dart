import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGetX extends StatelessWidget {
  const DialogGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // showDialog(
              //   context: context,
              //   builder: (context) => AlertDialog(
              //     content: Text(
              //         "Selamat Datang kkldfkljdfdfjkfjvfjrfjfomjexoijmerjmforiejfxerix  oiojijfxoiejfijfoiejfxeijejm xjrij"),
              //     shape: RoundedRectangleBorder(
              //         borderRadius:
              //             BorderRadius.only(topRight: Radius.circular(20))),
              //   ),
              //);
              Get.dialog(
                AlertDialog(
                  content: Text("kjdkjskdjklsdkldkkmf"),
                  backgroundColor: Colors.amber,
                  actions: [Text("Cancel")],
                ),
                useSafeArea: true,
              );
            },
            child: Text("Dialog")),
      ),
    );
  }
}
