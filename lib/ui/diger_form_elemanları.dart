import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  @override
  _DigerFormElemanlariState createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchState = false;
  double sliderDeger = 10;
  String secilenRenk = "Kirmizi";
  String secilenSehir = "Ankara";
  List<String> sehirler = ["Ankara", "İzmir", "İstanbul", "Hatay"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer Form Elemanları"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle_outline_outlined),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CheckboxListTile(
                title: Text("CheckBox title"),
                subtitle: Text("CheckBox Subtitle"),
                secondary: Icon(Icons.add),
                //selected: true,
                activeColor: Colors.red,
                value: checkBoxState,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState = secildi;
                  });
                }),
            RadioListTile<String>(
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.lock),
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("deger: $deger");
                });
              },
              title: Text("Ankara"),
            ),
            RadioListTile<String>(
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.lock),
              value: "Bursa",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("deger: $deger");
                });
              },
              title: Text("Bursa"),
            ),
            RadioListTile<String>(
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.lock),
              value: "İzmir",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("deger: $deger");
                });
              },
              title: Text("İzmir"),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  switchState = deger;
                  debugPrint("deger: $deger");
                });
              },
              title: Text("Switch Title"),
              subtitle: Text("Switch Subtitle"),
              secondary: Icon(Icons.icecream),
            ),
            Text("Değeri Slider'dan seçiniz"),
            Slider(
              value: sliderDeger,
              onChanged: (sliderdeger) {
                setState(() {
                  sliderDeger = sliderdeger;
                  debugPrint("deger: $sliderdeger");
                });
              },
              min: 10,
              max: 20,
              divisions: 20,
              label: sliderDeger.toString(),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 12,
                        height: 12,
                        color: Colors.red,
                      ),
                      Text("Kırmızı"),
                    ],
                  ),
                  value: "Kirmizi",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 12,
                        height: 12,
                        color: Colors.blue,
                      ),
                      Text("Mavi"),
                    ],
                  ),
                  value: "Mavi",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 12,
                        height: 12,
                        color: Colors.green,
                      ),
                      Text("Yeşil"),
                    ],
                  ),
                  value: "Yesil",
                ),
              ],
              onChanged: (String secilen) {
                setState(() {
                  secilenRenk = secilen;
                });
                //debugPrint("asdf: $secilen");
              },
              hint: Text("Seçiniz"),
              value: secilenRenk,
            ),
            DropdownButton<String>(
              items: sehirler.map((oAnkiSehir) {
                return DropdownMenuItem<String>(
                  child: Text(oAnkiSehir),
                  
                  value: oAnkiSehir,
                );
              }).toList(),
              onChanged: (s) {
                setState(() {
                  secilenSehir = s;
                });
              },
              value: secilenSehir,
            )
          ],
        ),
      ),
    );
  }
}
