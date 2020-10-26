import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapseToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Sliver App Bar"),
          //backgroundColor: Colors.red,
          expandedHeight: 100,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/icon.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ), // listeyi oluştururken göstereceğimiz yapılar
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(6),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              _dinamikelemanUretenFonksyon,
              childCount: 6,
            ),
          ),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
            itemExtent: 300),

        //sabit elemanlarla bir satırda kaç eleman olacağını söylediğimiz gridtürü
        SliverGrid(
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),

        //dinamik elemanlarla bir satırda kaç eleman olacağını söylediğimiz gridtürü
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikelemanUretenFonksyon,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikelemanUretenFonksyon,
                childCount: 6),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100))
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _dinamikelemanUretenFonksyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "Dinamik Liste Elemanı ${(index + 1)}",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
