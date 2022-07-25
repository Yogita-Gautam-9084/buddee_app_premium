import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebVeiwGoogle extends StatefulWidget {
  const WebVeiwGoogle({Key? key}) : super(key: key);

  @override
  State<WebVeiwGoogle> createState() => _WebVeiwGoogleState();
}

class _WebVeiwGoogleState extends State<WebVeiwGoogle> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: WebView(
        initialUrl: 'https://www.google.com/',
      ),
    );
  }
}
