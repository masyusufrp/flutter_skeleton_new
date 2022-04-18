import 'package:flutter/material.dart';
import 'package:flutter_skeleton_new/ArtikelDetail.dart';
import 'package:flutter_skeleton_new/NavDrawer.dart';
import 'package:flutter_skeleton_new/model/ArtikelModel.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artikel Skeleton',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> judulartikel =['Berita 1','Berita 2','Berita 3','Berita 4','Berita 5'];

  static List url = ['https://media.suara.com/pictures/336x188/2022/04/15/71885-kemnaker.jpg',
    'https://media.suara.com/pictures/336x188/2022/04/13/90533-kemnaker.jpg',
    'https://media.suara.com/pictures/336x188/2021/04/22/18681-ilustrasi-buka-bersama-pexelsrodnae-productions.jpg',
    'https://media.suara.com/pictures/336x188/2014/08/30/shutterstock_146626955.jpg',
    'https://media.suara.com/pictures/336x188/2021/05/19/76274-aksi-bella-hadid-demo-bela-palestina-instagram-atmyheartbels.jpg'];

  final List<ArtikelModel> Artikeldata = List.generate(
      judulartikel.length,
          (index)
      => ArtikelModel('${judulartikel[index]}', '${url[index]}','${judulartikel[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Berita Skeleton"),
        ),
        body: ListView.builder(
            itemCount: Artikeldata.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(Artikeldata[index].judul),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Artikeldata[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ArtikelDetail(artikelModel: Artikeldata[index],)));
                  },
                ),
              );
            }
        ),
        drawer: NavDrawer()
    );
  }
}