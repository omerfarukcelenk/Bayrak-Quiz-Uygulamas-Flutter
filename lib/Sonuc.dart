import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {

   late int dogruSayisi;


   SonucEkrani({required this.dogruSayisi});

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.dogruSayisi} Doğru ${5 - widget.dogruSayisi} Yanlış",style: TextStyle(fontSize: 40),),
            Text("% ${((widget.dogruSayisi * 100)/5).toInt()} Başarı",style: TextStyle(fontSize: 30,color: Colors.pink),),
            SizedBox(
              width: 250,height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Tekrar Dene")),
            ),
          ],
        ),
      ),

    );
  }
}
