import 'package:flutter/material.dart';
import 'package:flutter_skeleton_new/model/ArtikelModel.dart';
class ArtikelDetail extends StatelessWidget {
  final ArtikelModel artikelModel;

  const ArtikelDetail({Key? key, required this.artikelModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(artikelModel.judul),),
      body: Column(
        children: [
          Image.network(artikelModel.ImageUrl),
          const SizedBox(
            height: 10,
          ),
          Text(artikelModel.desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}