import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  const WebViewPage({super.key, required this.url});

  @override
  State<WebViewPage> createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewPage> {
late  WebViewController controller;
@override
  void initState() {

  controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {

        },
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (!request.url.contains('vidlink')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
        onUrlChange: (change) {

        },
      ),
    )
    ..loadRequest(Uri.parse(widget.url));

  super.initState();
  }

  @override
  void dispose() {
  // controller.
  super.dispose();
  }

@override
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  return RotatedBox(quarterTurns: 1,child: WebViewWidget(
      key: UniqueKey(),
      controller: controller,
      gestureRecognizers: Set()..add(Factory<TapGestureRecognizer>(() => TapGestureRecognizer(),)),
    ),);
  }
}
