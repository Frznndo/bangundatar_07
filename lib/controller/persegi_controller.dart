import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi x $sisi = $hitung";
    textColor.value = Colors.lightBlue;
  }
  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan keliling dari $sisi = $hitung";
    textColor.value = Colors.indigo;
  }
}