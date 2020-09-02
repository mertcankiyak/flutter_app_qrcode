import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qrData = "https://mertcankiyak.com";
  final arkaPlan = Color(0xFF253651);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: arkaPlan,
        title: Text("Generate Code"),
        centerTitle: true,
      ),
      body: Container(
        color: arkaPlan,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 250,
                  height: 250,
                  child: QrImage(
                    foregroundColor: Colors.white,
                data: qrData,
                    embeddedImage: NetworkImage("https://i.hizliresim.com/6y632K.png"),
                    embeddedImageStyle: QrEmbeddedImageStyle(size: Size(50.0,50.0),),

              )),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text("Eklemek istediğiniz linki veya metni giriniz.", style: TextStyle(color: Colors.grey),),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: qrText,
                  decoration:
                  InputDecoration(hintText: "Yazı veya Linkinizi giriniz: ", hintStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 15,),
                FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("QR KOD OLUŞTUR", style: TextStyle(color: Colors.white, fontSize: 22),),
                  ),
                  onPressed: () {
                    if (qrText.text.isEmpty) {
                      setState(() {
                        qrData = "https://mertcankiyak.com";
                      });
                    } else {
                      setState(() {
                        qrData = qrText.text;
                      });
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}
