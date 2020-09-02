import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  final arkaPlan = Color(0xFF253651);
  String qrResult ="Henüz Taranmadı";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: arkaPlan,
          title: Text("Scan Code"),
          centerTitle: true,
        ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: arkaPlan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SONUÇ: ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
            SizedBox(height: 15,),
            Text(qrResult, style: TextStyle(fontSize: 18,  color: Colors.grey),textAlign: TextAlign.center,),
            SizedBox(height: 20,),

        Container(
          width: MediaQuery.of(context).size.width-50,
          child: FlatButton(
            child: Text("QR Kodu Tara", style: TextStyle(color: Colors.white, fontSize: 22),),
            onPressed: () async{
             ScanResult scanning = await BarcodeScanner.scan();
             String texteCevir = scanning.rawContent;
             setState(() {
               qrResult = texteCevir;
             });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.blue),
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
