import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  //Liste için veri kaynağı oluştur
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltbaslik =
      List.generate(300, (index) => "Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listeNumaralari
          .map(
            (oankieleman) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.teal.shade200,
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.people),
                        radius: 12,
                      ),
                      title: Text("Liste Eleman başlık: $oankieleman"),
                      subtitle: Text(listeAltbaslik[oankieleman]),
                      trailing: Icon(Icons.add_call),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.orange,
                  height: 0,
                  indent: 0,
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}

/*
<Widget>[

      ],
 */
