import 'package:flutter/material.dart';

class FormveTextFormField extends StatefulWidget {
  @override
  _FormveTextFormFieldState createState() => _FormveTextFormFieldState();
}

class _FormveTextFormFieldState extends State<FormveTextFormField> {
  String _adSoyad, _sifre, _emailAdres;
  final formKey = GlobalKey<FormState>();
  bool otomatikKontrol = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        hintColor: Colors.green,
        primaryColor: Colors.indigo,
        accentColor: Colors.red,
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Form ve TexFormfield"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
              autovalidate: otomatikKontrol,
              key: formKey,
              child: ListView(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "Adınız ve Soyadınız",
                      labelText: "Ad Soyad",
                      // hintStyle: TextStyle(color: Colors.pink),
                      border: OutlineInputBorder(),
                      //focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                    //initialValue:"asdf" ,
                    validator: _adSoyadKontrol,
                    onSaved: (deger) => _adSoyad = deger,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email Adresiniz",
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                    ),
                    validator: _emailKontrol,
                    onSaved: (deger) => _emailAdres = deger,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Şifreniz",
                      labelText: "Şifre",
                      border: OutlineInputBorder(),
                    ),
                    validator: (String girilenVeri) {
                      return (girilenVeri.length < 6)
                          ? "En az 6 karakter girilmeli"
                          : null;
                    },
                    onSaved: (deger) => _sifre = deger,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton.icon(
                    label: Text("KAYDET"),
                    color: Colors.indigo[200],
                    icon: Icon(Icons.save),
                    onPressed: _girisBilgileriniOnayla,
                  )
                ],
              )),
        ),
      ),
    );
  }

  void _girisBilgileriniOnayla() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint(
          "girilen değerler: ad soyad: $_adSoyad, email: $_emailAdres, sifre: $_sifre");
    } else
      setState(() {
        otomatikKontrol = true;
      });
  }

  String _emailKontrol(String mail) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(mail)) ? "Geçersiz Mail" : null;
    /*if(!regex.hasMatch(mail)){
      return "Geçersiz Mail";
    }else return null;*/
  }

  String _adSoyadKontrol(String adSoyad) {
    RegExp regex = RegExp(
        "^[abcçdefgğhıijklmnoöprsştuüvyzqwxABCÇDEFGHIİJKLMNOÖPRSŞTUÜVYZQWX ]+\$");
    if (!regex.hasMatch(adSoyad))
      return 'Isim numara içermemeli';
    else
      return null;
  }
}
