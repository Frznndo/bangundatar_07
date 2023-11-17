import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int p =0;
  int l =0;
  int k =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = 2 * (p * l);
    hasil.value = "Hasil Perhitungan Luas dari Panjang $p dan Lebar $l = $hitung";
    textColor.value = Colors.lightBlue;
  }
  void hitungKeliling(){
    int hitung = 2 * (p + l);
    hasil.value = "Hasil Perhitungan keliling dari Panjang $p dan Lebar $l = $hitung";
    textColor.value = Colors.indigo;
  }
}