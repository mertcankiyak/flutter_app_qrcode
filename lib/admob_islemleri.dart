import 'package:firebase_admob/firebase_admob.dart';

class AdMobIlsmleri{

  static final String appIDCanli = "ca-app-pub-1547606218429380~4623338429";
    static final String appIDTest = FirebaseAdMob.testAppId;

  static final String banner1Canli = "ca-app-pub-1547606218429380/7669331831";

  static admobInitialize(){
    FirebaseAdMob.instance.initialize(appId: appIDCanli);
  }

  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['qr code', 'qr code reader', 'qr code scanner', 'qr code generate'],
    contentUrl: 'https://mertcankiyak.com',
    childDirected: false,
    testDevices: <String>[],
  );

  static BannerAd buildBannerAd(){
    return BannerAd(
      adUnitId: banner1Canli,
      size: AdSize.fullBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        if(event ==MobileAdEvent.loaded){
          print("banner yüklendi");
        }
      },
    );
  }
}