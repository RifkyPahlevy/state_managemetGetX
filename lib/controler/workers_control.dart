import 'package:get/get.dart';

class WorkersControl extends GetxController {
  var data = 0.obs;

  void changeData() => data++;

  @override
  void onInit() {
    // ever(data, (Value) {
    //   print('data changed');
    // }); setiap perubahan data, akan di print

    // once(data, (value) => print('data changed')); setiap perubahan data, akan di print sekali
    debounce(
      data,
      (value) => print('data changed'),
      time: Duration(seconds: 3),
    ); // setiap perubahan data, akan di print ketika waktu 3 detik
    // interval(data, (value) => print('data changed'),
    //     time: Duration(
    //         seconds:
    //             3)); // setiap perubahan data, akan di print ketika mencapai waktu yg diinginkan
    // super.onInit();
  }
}
