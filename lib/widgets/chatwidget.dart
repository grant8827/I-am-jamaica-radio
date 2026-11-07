import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class chapPage extends StatefulWidget {
  const chapPage({super.key});

  @override
  State<chapPage> createState() => _chapPageState();
}

class _chapPageState extends State<chapPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://my.cbox.ws/iamjamaicaradio'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: controller,
    );
  }
}

class chatApp extends StatefulWidget {
  const chatApp({super.key});

  @override
  State<chatApp> createState() => _chatAppState();
}

class _chatAppState extends State<chatApp> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://my.cbox.ws/iamjamaicaradio')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://my.cbox.ws/iamjamaicaradio'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
