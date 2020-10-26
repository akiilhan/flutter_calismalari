import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class TarihSaatOrnekState extends StatefulWidget {
  @override
  _TarihSaatOrnekStateState createState() => _TarihSaatOrnekStateState();
}

class _TarihSaatOrnekStateState extends State<TarihSaatOrnekState> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('tr');

    DateTime suan= DateTime.now();
    DateTime ucAyoncesi =DateTime(2020,suan.month-3);
    DateTime yirmiGunSonrasi =DateTime(2020,10,suan.day+20);
    TimeOfDay suAnkiSaat =TimeOfDay.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
      ),
      body: Center(

        child: Column(
          children: [
            RaisedButton.icon(
              color: Colors.pink,
              icon: Icon(Icons.date_range, color:Colors.white,),
              label: Text("Tarih Seç"),
              onPressed: () {
                showDatePicker(context: context, initialDate: suan, firstDate: ucAyoncesi, lastDate: yirmiGunSonrasi)
                .then((secilenTarih){
                  debugPrint(secilenTarih.timeZoneName);
                  debugPrint(secilenTarih.toString());
                  debugPrint(secilenTarih.toIso8601String());
                  debugPrint(secilenTarih.microsecondsSinceEpoch.toString());
                  debugPrint(secilenTarih.add(Duration(days: 20)).toString());
                  var yeniDate =(DateTime.parse(secilenTarih.toUtc().toString()));
                  debugPrint(DateFormat.yMMMd('tr_TR').format(secilenTarih));
                  debugPrint(DateFormat.yMd('tr_TR').format(secilenTarih));
                });
              },
            ),
            RaisedButton.icon(
              color: Colors.orange,
              icon: Icon(Icons.access_time, color:Colors.white,),
              label: Text("Saat Seç"),
              onPressed: () {
                showTimePicker(context: context, initialTime: suAnkiSaat).then((secilenSaat){
                  debugPrint(suAnkiSaat.format(context));
                  debugPrint(suAnkiSaat.hour.toString() +":"+suAnkiSaat.minute.toString());

                });
                
              },
            )
          ],
        ),
      ),
    );
  }
}
