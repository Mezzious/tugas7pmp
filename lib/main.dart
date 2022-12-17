import 'package:flutter/material.dart';

void main() => runApp(const GradientAppBarRun());

// stateless widget
class GradientAppBarRun extends StatelessWidget {
  const GradientAppBarRun({super.key});


  @override
  Widget build(BuildContext context) {
    // returning MaterialApp
    //var menu;
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light (),
      home:
      // scaffold
      Scaffold (
        body:
        CustomScrollView (
          slivers: <Widget>[
            // silverappbar for gradient widget
            SliverAppBar (
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Container (
                decoration: const BoxDecoration (
                  // LinearGradient
                  gradient: LinearGradient (
                    // colors for gradient
                    colors: [
                      Colors.blue,
                      Colors.purple,
                    ],
                  ),
                ),
              ),
              // title of appbar
              //title: Text ("Gradient AppBar!"),
              title:
              Row(
                children:<Widget>[Image.asset('assets/inaklug.png',fit: BoxFit.contain,
                  height: 60,),
                  const Text('Inaklug'),
                ],
              ),
              actions: const <Widget>[
                Padding(padding: EdgeInsets.symmetric(horizontal:16),
                  child: Icon(Icons.menu),
                )
              ],

            ),
            SliverList (
              delegate: SliverChildListDelegate ([
                // Body Element
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key, required this.title}) : super(key: key);
  final String title;
  @override Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Artikel Terbaru")),
        body: ListView( shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: const <Widget>[
            ProductBox(name: "Artikel Terbaru", description: "Penting cara mudah agar bisa Kuliah di luar negeri dengan beasiswa",
                price: 1000, image: "1.png"),
            ProductBox(name: "Pixel", description: "Penting cara mudah agar bisa Kuliah di luar negeri dengan beasiswa",
                price: 800, image: "2.png"),
            ProductBox( name: "Laptop", description: "Penting cara mudah agar bisa Kuliah di luar negeri dengan beasiswa",
                price: 2000, image: "3.png"),
            ProductBox( name: "Tablet", description: "Penting cara mudah agar bisa Kuliah di luar negeri dengan beasiswa",
                price: 1500, image: "4.png"),
            ProductBox( name: "Pendrive", description: "Penting cara mudah agar bisa Kuliah di luar negeri dengan beasiswa",
                price: 100, image: "5.png"),
          ], ));
  }}

class ProductBox
    extends StatelessWidget {
  const ProductBox({Key? key, required this.name,required this.description,
    required this.price,required this.image}) : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container( padding: const EdgeInsets.all(2), height: 140,
        child: Card( child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[ Image.asset("assets/imgassets/$image",),
              Expanded( child: Container(padding: const EdgeInsets.all(5),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[ Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(description), Text("Price: $price"), ], ))) ])));
  }
}