import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  double r =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 3.14 * r * r ;
    hasil.value = "Hasil Perhitungan Luas dari jari jari $r = $hitung";
    textColor.value = Colors.lightBlue;
  }
  void hitungKeliling(){
    double hitung = 2 * 3.14 * r ;
    hasil.value = "Hasil Perhitungan keliling dari jari jari $r = $hitung";
    textColor.value = Colors.indigo;
  }
}