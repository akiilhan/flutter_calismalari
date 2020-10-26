import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatefulWidget {
  @override
  _TextFieldIslemleriState createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  String girilenMetin = "";
  FocusNode _fNode;
  int maxLine = 1;
  TextEditingController textController1;

  @override
  void initState() {
    textController1 = TextEditingController(text: "varsayılan");
    _fNode = FocusNode();
    _fNode.addListener(() {
      setState(() {
        if (_fNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    textController1.dispose();
    _fNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input İşlemleri"),
      ),
      floatingActionButton: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 30,
            height: 30,
            child:FloatingActionButton(
              onPressed: () {
                textController1.text ="Butondan geldim";
                //FocusScope.of(context).requestFocus(_fNode);
              },
              child: Icon(
                Icons.edit,
              ),
              backgroundColor: Colors.red,
            ),
          ),
          SizedBox(
            height: 10,
          ),

          FloatingActionButton(
            heroTag: "aa",
            onPressed: () {
              debugPrint(textController1.text);
            },
            child: Icon(
              Icons.edit,
            ),
            mini: true,
            backgroundColor: Colors.yellow,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: "cc",
            onPressed: () {
              FocusScope.of(context).requestFocus(_fNode);
            },
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textController1,
              keyboardType: TextInputType.number,
              //kullanıcının sadece numara girişi yapabilmesini sağlar.
              textInputAction: TextInputAction.done,
              // text'e tıklandığında done işareti çıkar.
              autofocus: false,
              // bu özellik true olduğunda, otomatik olarak input girişini açar. yani klavyeyi açar.
              maxLines: maxLine,
              // 3 satırlık açar.
              maxLength: 40,
              //  kullanıcı 4 karaktere kadar yazabilir.
              focusNode: _fNode,
              maxLengthEnforced: true,
              // maxlengt'ten fazla girememesini sağlar. default true'dur.
              //onChanged: (s) => debugPrint("onchange: $s"),
              // onChanged metodu yazılan her karakteri alır.
              onSubmitted: (String s) {
                //debugPrint("on submit $s");
                girilenMetin = s;
                debugPrint("girilen metin:" + s);
              },
              // onSubmitted metodu yazıldıktan sonra submit edilen yazılır.
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                  hintText: "Metni Buraya Yazınız",
                  labelText: "Başlık",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.icecream),
                  prefixIcon: Icon(Icons.ac_unit),
                  suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.red
                      .shade100 // bunu yapmak için yukarıdaki gibi filled:tue olmalı.

                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              //kullanıcının sadece numara girişi yapabilmesini sağlar.
              textInputAction: TextInputAction.done,
              // text'e tıklandığında done işareti çıkar.
              autofocus: false,
              // bu özellik true olduğunda, otomatik olarak input girişini açar. yani klavyeyi açar.
              // maxLines: 3,
              // 3 satırlık açar.
              maxLength: 4,
              //  kullanıcı 4 karaktere kadar yazabilir.
              maxLengthEnforced: true,
              // maxlengt'ten fazla girememesini sağlar. default true'dur.
              onChanged: (s) => debugPrint("onchange: $s"),
              // onChanged metodu yazılan her karakteri alır.
              onSubmitted: (String s) {
                //debugPrint("on submit $s");
                girilenMetin = s;
                debugPrint("girilen metin:" + s);
              },
              // onSubmitted metodu yazıldıktan sonra submit edilen yazılır.
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                  hintText: "Metni Buraya Yazınız",
                  labelText: "Başlık",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.icecream),
                  prefixIcon: Icon(Icons.ac_unit),
                  suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.red
                      .shade100 // bunu yapmak için yukarıdaki gibi filled:tue olmalı.

                  ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              //kullanıcının sadece numara girişi yapabilmesini sağlar.
              textInputAction: TextInputAction.done,
              // text'e tıklandığında done işareti çıkar.
              autofocus: false,
              // bu özellik true olduğunda, otomatik olarak input girişini açar. yani klavyeyi açar.
              // maxLines: 3,
              // 3 satırlık açar.
              maxLength: 4,
              //  kullanıcı 4 karaktere kadar yazabilir.
              maxLengthEnforced: true,
              // maxlengt'ten fazla girememesini sağlar. default true'dur.
              onChanged: (s) => debugPrint("onchange: $s"),
              // onChanged metodu yazılan her karakteri alır.
              onSubmitted: (String s) {
                //debugPrint("on submit $s");
                girilenMetin = s;
                debugPrint("girilen metin:" + s);
              },
              // onSubmitted metodu yazıldıktan sonra submit edilen yazılır.
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                  hintText: "Metni Buraya Yazınız",
                  labelText: "Başlık",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.icecream),
                  prefixIcon: Icon(Icons.ac_unit),
                  suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.red
                      .shade100 // bunu yapmak için yukarıdaki gibi filled:tue olmalı.

                  ),
            ),
          ),*/
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            color: Colors.teal.shade400,
            child:
                Align(alignment: (Alignment.center), child: Text(girilenMetin)),
          ),
        ],
      ),
    );
  }
}
