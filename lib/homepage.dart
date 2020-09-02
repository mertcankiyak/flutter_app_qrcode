import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_qrcode/admob_islemleri.dart';
import 'package:flutter_app_qrcode/generate.dart';
import 'package:flutter_app_qrcode/scan.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  BannerAd myBannerad;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AdMobIlsmleri.admobInitialize();
    myBannerad = AdMobIlsmleri.buildBannerAd();
    myBannerad.load();

  }

  final arkaPlan = Color(0xFF253651);
  @override
  Widget build(BuildContext context) {
    myBannerad.show();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: arkaPlan,
        title: Text(
          "QR Kod Oluştur / Tarat",
        ),
        centerTitle: true,
      ),body: Container(
      color: arkaPlan,
      padding: EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: NetworkImage("https://i.hizliresim.com/6y632K.png"),width: 250, height: 250,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             SizedBox(height: 10,),
             flatButton("QR Kod Tara", Scan()),
             SizedBox(height: 10,),
             flatButton("QR Kod Oluştur", Generate()),
           ],
         ),
        ],
      ),
    ),
    );
  }
  Widget flatButton(String text, Widget widget){

    return FlatButton(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 22),),
      ),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: Colors.grey),
    ),
    );
  }
}
