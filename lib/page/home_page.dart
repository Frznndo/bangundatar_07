import 'package:bangun_datar_kelas_b/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("HomePage", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0x8F73AF36)),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/persegi.jpeg",title: "Persegi"))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/persegipanjang.jpeg",title: "Persegi Panjang"))),
            ],
          ),
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/segitiga.jpeg",title: "Segitiga"))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/lingkaran.jpeg",title: "Lingkaran"))),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade300,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 100,),
            Text(title, style: TextStyle(color: Colors.white),),
          ],
        ));
  }
}
