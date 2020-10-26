import 'package:flutter/material.dart';
import 'file:///E:/Flutter_Project/list_view_calismasi/lib/ui/text_field_ozellikleri.dart';
import 'package:list_view_calismasi/ui/custom_Scroll_ve%20slivers.dart';
import 'package:list_view_calismasi/ui/date_time_picker.dart';
import 'package:list_view_calismasi/ui/diger_form_elemanlar%C4%B1.dart';
import 'package:list_view_calismasi/ui/etkin_liste_ornek.dart';
import 'package:list_view_calismasi/ui/form_textformfield_ornek.dart';
import 'package:list_view_calismasi/ui/grid_view_kullanimi.dart';
import 'package:list_view_calismasi/ui/liste_dersleri.dart';
import 'package:list_view_calismasi/ui/navigasyon_islemleri.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Dersleri",
    initialRoute: "/tarihSaat",
    routes: {
      '/': (context) => NavigasyonIslemleri(),
      '/textFormField': (context) => FormveTextFormField(),
      '/tarihSaat': (contex)=> TarihSaatOrnekState(),
      '/TextFieldIslemleri': (context) => TextFieldIslemleri(),
      '/digerFormField': (context)=> DigerFormElemanlari(),
      '/CPage': (context) => Csayfasi(),
      '/DPage': (context) => Dsayfasi(),
      '/GPage': (context) => Gsayfasi(),
      '/FPage': (context) => Fsayfasi(),
      //'/CPage/DPage/' :(context) => Gsayfasi(),
      '/DPage/GPage/FPage': (context) => Fsayfasi(),
    },
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    //home: NavigasyonIslemleri(),
  ));
}
