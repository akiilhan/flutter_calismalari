//import 'dart:html';



import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ogrenciVerileriniGetir();
    return ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 4,
        color: Colors.cyan,
      ),
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        color: index % 2 == 0 ? Colors.orange : Colors.indigo,
        elevation: 4,
        child: ListTile(
          onTap: () {
            debugPrint(tumOgrenciler[index].toString());
            toastMesajGoster(index, false);
            alertDiyalogGoster(context);
          },
          onLongPress: () {
            debugPrint("uzun basılan eleman $index");
            toastMesajGoster(index, true);
          },
          leading: Icon(Icons.add_call),
          title: Text(tumOgrenciler[index]._isim),
          subtitle: Text(tumOgrenciler[index]._aciklama),
          trailing: Icon(Icons.people),
        ),
      ),
    );
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
      300,
      (index) => Ogrenci(
        "Ogrenci $index Adı",
        "Ogrenci $index açıklaması  ",
        index % 2 == 0 ? true : false,
      ),
    );
  }

  void toastMesajGoster(int index, bool uzunBasilma) {
    Fluttertoast.showToast(
        msg: uzunBasilma
            ? "uzun basildi: " + tumOgrenciler[index].toString()
            : "tek tıklama:" + tumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDiyalogGoster(BuildContext ctx) {
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder:(ctx){
        return AlertDialog(
          title: Text("Alert Diyalog Başlık"),
          content: Text("alert diyalog içeriği \n ikinci satir \n üçüncü satir\n\n\n"),
          actions: [

          ],

        );
      }
    );
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "Seçilen Öğrenci adı: $_isim açıklaması: $_aciklama";
  }
}
