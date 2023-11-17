import 'package:bangun_datar_kelas_b/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _lingkaranController= Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Lingkaran Page'),),
      body: Column(
        children: [
          Image.asset("assets/lingkaran.jpeg",  height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lingkaran", style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text("Bangun datar dua dimensi yang terbentuk dari sekumpulan titik dengan jarak yang konstan atau teratur dari titik tetap pada sebuah bidang."),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    onChanged: (value){
                      _lingkaranController.r = double.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Jari Jari",
                        hintText: "Masukkan Jari Jari",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        _lingkaranController.hitungLuas();
                      }, child: Text("Hitung Luas" ,style: TextStyle(color: Colors.white),),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightBlue)
                        ),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    _lingkaranController.hitungKeliling();
                  }, child: Text("Hitung Keliling", style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo)
                    ),),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Obx(() => Text(_lingkaranController.hasil.value,
                  style: TextStyle(color: _lingkaranController.textColor.value),
                )),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
