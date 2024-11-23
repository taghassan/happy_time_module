import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url,redirectPrevent;
  const WebViewPage({super.key, required this.url,required this.redirectPrevent});

  @override
  State<WebViewPage> createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewPage> {
late  WebViewController controller;
BannerAd? banner;
//***************** created by TajEldeen *****************//
// Banner Ads
//********************************************************//

 createAndLoadBanner({required String adUnitId}) async {
  var size = AnchoredAdaptiveBannerAdSize(Orientation.portrait,
      width: Get.width.truncate(), height: 60);
  banner = BannerAd(
    adUnitId: adUnitId,
    request: const AdRequest(),
    size: size,
    listener: BannerAdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (ad) {
        debugPrint('$ad loaded.');
        // setState(() {
        //
        // });
      },
      // Called when an ad request failed.
      onAdFailedToLoad: (ad, err) {
        debugPrint('BannerAd failed to load: $err');
        // Dispose the ad here to free resources.
        ad.dispose();
        // setState(() {
        //
        // });
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) {},
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) {},
      // Called when an impression occurs on the ad.
      onAdImpression: (Ad ad) {},
    ),
  )..load();


}


@override
  void initState() {

  createAndLoadBanner(adUnitId: 'ca-app-pub-8107574011529731/2912692739');

  AppLogger.it.logInfo("url is : ${widget.url}");
  controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {

        },
        onPageFinished: (String url) {
          // controller.setJavaScriptMode(JavaScriptMode.disabled);
        },
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (!request.url.contains(widget.redirectPrevent)) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
        onUrlChange: (change) {

        },
      ),
    )
    ..loadRequest(Uri.parse(widget.url),headers: {

    });

  super.initState();
  }

  @override
  void dispose() {
  // controller.
  super.dispose();
  }

  Widget? loadBannerWidget({required BannerAd? bannerAd}) {
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
  }

@override
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  return RotatedBox(quarterTurns: 1,child:Stack(
    children: [

      WebViewWidget(
        key: UniqueKey(),
        controller: controller,
        gestureRecognizers: Set()..add(Factory<TapGestureRecognizer>(() => TapGestureRecognizer(),),),
      ),

  loadBannerWidget(bannerAd: banner)??const SizedBox.shrink()

    ],
  ),);
  }
}
