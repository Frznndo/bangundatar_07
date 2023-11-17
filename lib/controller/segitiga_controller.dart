import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas =0;
  int tinggi =0;
  int sisia =0;
  int sisib =0;
  int sisic =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 0.5 * alas * tinggi;
    hasil.value = "Hasil Perhitungan Luas dari 0.5 x $alas x $tinggi = $hitung";
    textColor.value = Colors.lightBlue;
  }
  void hitungKeliling(){
    int hitung = sisia + sisib + sisic;
    hasil.value = "Hasil Perhitungan keliling dari $sisia $sisib $sisic = $hitung";
    textColor.value = Colors.indigo;
  }
}