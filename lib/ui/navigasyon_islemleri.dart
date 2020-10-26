import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B sayfasi";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("A sayfasına git"),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Asayfasi(),
                      ),
                    );
                  },
                ),
                RaisedButton(
                  child: Text("B sayfasına git ve veri gönder"),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bsayfasi(baslik),
                      ),
                    );
                  },
                ),
                RaisedButton(
                  child: Text("C sayfasına git ve geri gel"),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Csayfasi(),
                      ),
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.amber,
                  child: Text(" D sayfasına Git ve gelirken veri getir"),
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(builder: (contex) => Dsayfasi()),
                    ).then((popOlayindanSonraGelenDeger) {
                      debugPrint(
                          "Pop İşleminden sonra gelen değer: $popOlayindanSonraGelenDeger");
                    });
                  },
                ),
                RaisedButton(
                  child: Text("E sayfasına git ve geri gelme"),
                  color: Colors.cyan,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Esayfasi()));
                  },
                ),
                RaisedButton(
                  child: Text("Liste sayfasına Git"),
                  color: Colors.yellow.shade400,
                  onPressed: () {
                    Navigator.pushNamed(context, "/TextFieldIslemleri");
                  },
                ),
                RaisedButton(
                  child: Text("Form sayfasına Git"),
                  color: Colors.teal.shade400,
                  onPressed: () {
                    Navigator.pushNamed(context, "/textFormField");
                  },
                ),
                RaisedButton(
                  child: Text("Diğer Form elemanları"),
                  color: Colors.cyanAccent.shade400,
                  onPressed: () {
                    Navigator.pushNamed(context, "/digerFormField");
                  },
                ),
                RaisedButton(
                  child: Text("Tarih Saat"),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.pushNamed(context, "/tarihSaat");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Asayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A sayfası",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class Bsayfasi extends StatelessWidget {
  String gelenBasliVerisi;

  Bsayfasi(this.gelenBasliVerisi);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBasliVerisi,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              gelenBasliVerisi,
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class Csayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "C sayfası",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            RaisedButton(
                color: Colors.purple,
                child: Text("Geri Dön"),
                onPressed: () {
                  Navigator.pop(context);
                }),
            RaisedButton(
                color: Colors.purple,
                child: Text(" A sayfasına Geri Dön"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Asayfasi()));
                }),
          ],
        ),
      ),
    );
  }
}

class Dsayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "D Sayfasi",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "D sayfası",
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
                RaisedButton(
                    color: Colors.purple,
                    child: Text("Geri Dön ve veri gönder"),
                    onPressed: () {
                      Navigator.pop<bool>(context,
                          true); // true demek ürün silindi demek. false ürün silinemedi veya kullanıcı vazgeçti.
                    }),
              ],
            ),
          ),
        ),
        onWillPop: () {
          debugPrint("on will pop çalıştı");
          Navigator.pop(context, false);
          return Future.value(false);
        });
  }
}

class Esayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "E sayfası",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            RaisedButton(
                child: Text("F sayfasına Git"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Fsayfasi(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class Fsayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "F sayfası",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            RaisedButton(
              child: Text("G sayfasına Git"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/GPage");
              },
            )
          ],
        ),
      ),
    );
  }
}

class Gsayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "G Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "G sayfası",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
