import 'package:get/get.dart';

class HomeControl extends GetxController {
  //variabel pada getX
  //RxInt data = 0.obs; //RxInt
  RxString nama = "Kosong".obs;
  RxDouble data = 0.0.obs;
  RxBool dataBool = true.obs;
  RxList<int> dataList = [1, 2, 3, 4, 5].obs;
  RxSet<int> dataSet = {1, 2, 4, 5}.obs;
  RxMap<String, dynamic> myMap = {"id": 1, "nama": "Rudi", "Umur": 24}.obs;
  int valueAngka = 6;

  void ubahMap() {
    myMap['nama'] = "Sumanto";
  }

  void tambahSet() {
    dataSet.add(valueAngka);
    valueAngka++;
  }

  void ubahSet() {
    dataSet.value = {99, 10, 5, 3};
  }

  void tambahList() {
    dataList.add(valueAngka);
    valueAngka++;
  }

  void hapusList() {
    dataList.remove(5);
  }

  void gantiBoolean() {
    dataBool.toggle();
  }

  void updateNama() {
    nama.value = "Rifky";
  }

  void reset() {
    nama.value = "kosong";
  }

  void refresh() {
    update();
  }

  void increment() => data.value++;
  void decrement() => data.value--;
}
