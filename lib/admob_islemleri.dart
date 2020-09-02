import 'package:firebase_admob/firebase_admob.dart';

class AdMobIlsmleri{

  static final String appIDCanli = "app_id";
    static final String appIDTest = FirebaseAdMob.testAppId;

  static final String banner1Canli = "ads_id";

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
