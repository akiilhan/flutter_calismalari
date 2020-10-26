import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurpleAccent,
                    width: 5,
                    style: BorderStyle.solid,
                  ),
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.red],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                    image: AssetImage("assets/images/icon.png"),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  )),
              //color: Colors.blue[100 * ((index + 1) % 8)],
              child: Text(
                "merhaba Flutter:$index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
            ),
            onTap:() => debugPrint("Merhaba Flutter: $index tıklanıldı.") ,
            onDoubleTap:() => debugPrint("Merhaba Flutter: $index  double tıklanıldı.") ,
            onLongPress: ()=> debugPrint("Merhaba Flutter: $index long basıldı."),
            onHorizontalDragStart: (e)=> debugPrint("Merhaba Flutter: $index  uzun basıldı. $e"),
          );
        });
  }
}

/*
GridView.extent(
      maxCrossAxisExtent: 100,
      reverse: false,
      //crossAxisCount: 3,
      primary: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter1",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter2",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter3",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter4",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter5",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            "merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );*/

/*
GridView.count(
      reverse: false,
      crossAxisCount: 3,
      primary: true,
      scrollDirection:Axis.horizontal ,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter1",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter2",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter3",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter4",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter5",textAlign: TextAlign.center,),
        ),Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter",textAlign: TextAlign.center,),
        ),Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter",textAlign: TextAlign.center,),
        ),Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter",textAlign: TextAlign.center,),
        ),Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter",textAlign: TextAlign.center,),
        ),Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter",textAlign: TextAlign.center,),
        ),Container(
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text("merhaba Flutter",textAlign: TextAlign.center,),
        ),






      ],

    );
 */
