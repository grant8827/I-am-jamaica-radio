import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class videoPlayer extends StatefulWidget {
  const videoPlayer({super.key});

  @override
  State<videoPlayer> createState() => _videoPlayerState();
}

class _videoPlayerState extends State<videoPlayer> {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith(
              'https://live.kingdom-tv.com/hybrid-stream-video-widget/iamjamaicawebtv')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
      Uri.parse(
          'https://live.kingdom-tv.com/hybrid-stream-video-widget/iamjamaicawebtv'),
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}

//ios video payer
class iosVideoPlayer extends StatefulWidget {
  const iosVideoPlayer({super.key});

  @override
  State<iosVideoPlayer> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<iosVideoPlayer> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(
            'https://live.kingdom-tv.com/hybrid-stream-video-widget/iamjamaicawebtv'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
