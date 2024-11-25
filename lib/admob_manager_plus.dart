import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:logger/logger.dart';

mixin AdmobManagerPlus on GetxController {
  //***************** created by TajEldeen *****************//
  // Banner Ads
  //********************************************************//

  Future<BannerAd> createAndLoadBanner({required String adUnitId}) async {
    var size = AnchoredAdaptiveBannerAdSize(Orientation.portrait,
        width: Get.width.truncate(), height: 60);
    BannerAd bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: size,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          update();
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');
          // Dispose the ad here to free resources.
          ad.dispose();
          update();
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) {},
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) {},
        // Called when an impression occurs on the ad.
        onAdImpression: (Ad ad) {},
      ),
    )..load();

    return bannerAd;
  }

  Widget? loadBannerWidget({required BannerAd? bannerAd}) {
   try{
     if (bannerAd != null) {
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15),
         child: SizedBox(
           width: bannerAd.size.width.toDouble(),
           height: bannerAd.size.height.toDouble(),
           child: AdWidget(ad: bannerAd),
         ),
       );
     }
     return const SizedBox.shrink();
   }catch(e){

     return const SizedBox.shrink();
   }
  }

  //***************** created by TajEldeen *****************//
  // end of banner ads
  //********************************************************//
  InterstitialAd? interstitialAd;
  String adUnitId= 'ca-app-pub-8107574011529731/1224238366';
  /// Loads an interstitial ad.
  Future<InterstitialAd?> loadInterstitialAd() async {

   await InterstitialAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
              // Called when the ad showed the full screen content.
              onAdShowedFullScreenContent: (ad) {},
              // Called when an impression occurs on the ad.
              onAdImpression: (ad) {},
              // Called when the ad failed to show full screen content.
              onAdFailedToShowFullScreenContent: (ad, err) {
                // Dispose the ad here to free resources.
                ad.dispose();
              },
              // Called when the ad dismissed full screen content.
              onAdDismissedFullScreenContent: (ad) {
                // Dispose the ad here to free resources.
                ad.dispose();
              },
              // Called when a click is recorded for an ad.
              onAdClicked: (ad) {});

          debugPrint('$ad loaded.');
          // Keep a reference to the ad so you can show it later.
          interstitialAd = ad;
          update();
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint('InterstitialAd failed to load: $error');
        },
      ),
    );

    return interstitialAd;
  }
}

class AddModel {
  final String? adUnitId;
  final Ad? adUnit;
  final NativeAd? nativeAd;

  AddModel({this.adUnitId, this.adUnit, this.nativeAd});
}


class SingerListAdUnits{
  //='ca-app-pub-8107574011529731/1677462684'
  SingerListAdUnits({required this.adUnitId,this.onAdLoaded,this.onAdFailedToLoad});
  NativeAd? nativeAd;
  final String adUnitId ;
  final void Function(Ad,NativeAd?)? onAdLoaded;
  final dynamic Function(Ad, LoadAdError)? onAdFailedToLoad;
  bool nativeAdIsLoaded = false;
  /// Loads a native ad.
  void loadAd() {
    nativeAd = NativeAd(
        adUnitId: adUnitId,
        listener: NativeAdListener(
          onAdLoaded: (ad) {
            debugPrint('$NativeAd loaded.');

            nativeAdIsLoaded = true;
            if(onAdLoaded!=null) {
              onAdLoaded!(ad,nativeAd);
            }

          },
          onAdFailedToLoad: (ad, error) {
            if(onAdFailedToLoad!=null){
              onAdFailedToLoad!(ad,error);
            }
            // Dispose the ad here to free resources.
            debugPrint('$NativeAd failed to load: $error');
            ad.dispose();
          },
        ),
        request: const AdManagerAdRequest(),
        // Styling
        nativeTemplateStyle: NativeTemplateStyle(
          // Required: Choose a template.
            templateType: TemplateType.medium,
            // Optional: Customize the ad's style.
            mainBackgroundColor: Colors.purple,
            cornerRadius: 10.0,
            callToActionTextStyle: NativeTemplateTextStyle(
                textColor: Colors.cyan,
                backgroundColor: Colors.red,
                style: NativeTemplateFontStyle.monospace,
                size: 16.0),
            primaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.red,
                backgroundColor: Colors.cyan,
                style: NativeTemplateFontStyle.italic,
                size: 16.0),
            secondaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.green,
                backgroundColor: Colors.black,
                style: NativeTemplateFontStyle.bold,
                size: 16.0),
            tertiaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.brown,
                backgroundColor: Colors.amber,
                style: NativeTemplateFontStyle.normal,
                size: 16.0)))
      ..load();
  }
}



mixin HasNativeAdsMixin on GetxController {
  Logger adsMixinLogger = Logger();
  // List<String> adUnitIds = [];
  List<String?> loadedToScreenAdIds = [];
  List<AddModel> loadedSuccessfullyAds = [];
  int adInterval = 10;

  int loadedAdIndex(int index) => ((index / adInterval) - 1).toInt();

  AddModel? getAdItem(int index) {
    int loadedAdIndexValue = loadedAdIndex(index);
    // controller.bregAraabSongs.logger.i("loadedAdIndex $loadedAdIndex $adItem ${controller.loadedSuccessfullyAds.length}");
    return loadedAdIndexValue < loadedSuccessfullyAds.length
        ? loadedSuccessfullyAds[loadedAdIndexValue]
        : null;
  }


  initAds({List<String>? adUnitIds})async {

    loadedToScreenAdIds.clear();
    final receivePort = ReceivePort();
    Isolate.spawn(prepareAdData, receivePort.sendPort);

    adUnitIds =adUnitIds?? [];

    try {

      // Listen for data from the isolate
      receivePort.listen((data) {
        if (data is AdRequest) {


          for (String adId in adUnitIds?? []) {
            adsMixinLogger.w("adId = $adId");
            SingerListAdUnits adUnits = SingerListAdUnits(
              adUnitId: adId,
              onAdLoaded: (p0, p1) {
                adsMixinLogger.w("p0.adUnitId ${p0.adUnitId}");
                loadedSuccessfullyAds
                    .add(AddModel(adUnitId: p0.adUnitId, adUnit: p0, nativeAd: p1));
                update();
              },
              onAdFailedToLoad: (p0, error) {
                adsMixinLogger.e("p0.adUnitId ${p0.adUnitId}");
                adsMixinLogger.e("message ${error.message}");
                adsMixinLogger.e("code ${error.code}");
                adsMixinLogger.e("domain ${error.domain}");
                adsMixinLogger.e("responseInfo ${error.responseInfo}");
              },
            );
            adUnits.loadAd();
          }


          //end of data from the isolate
        }
      });

    } catch (_) {}


  }

  static void prepareAdData(SendPort sendPort) {
    // Prepare the AdRequest or other ad-related data here
    const adRequest = AdRequest();  // You can configure this as needed

    // Send the data back to the main isolate
    sendPort.send(adRequest);
  }


  Widget nativeAdWidget(int index) {

    AddModel? adItem = getAdItem(index);

    if (adItem != null) {
      loadedToScreenAdIds.add(adItem.adUnitId);

      return adItem.nativeAd != null
          ? ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 320, // minimum recommended width
          minHeight: 90, // minimum recommended height
          maxWidth: 400,
          maxHeight: 200,
        ),
        child: AdWidget(ad: adItem.nativeAd!,),
      )
          : const SizedBox.shrink();
    }
    return const SizedBox.shrink();
  }

// Helper method to get the original item index for non-ad indices
  int getOriginalItemIndex(int index) {
    return index - (index ~/ (adInterval + 1));
  }

// Helper method to determine if an index should contain an ad
  bool isAdIndex(int index) {
    return (index + 1) % (adInterval + 1) ==
        0; // Every 10 items (0-based index, so every 11th item in the view)
  }

  disposeNativeAds(){
    for(AddModel ad in loadedSuccessfullyAds){
      try{
        ad.nativeAd?.dispose();
      }catch(e){}
    }
  }
}

