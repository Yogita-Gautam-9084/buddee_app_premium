import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewFacebook extends StatefulWidget {
  const WebViewFacebook({Key? key}) : super(key: key);

  @override
  State<WebViewFacebook> createState() => _WebViewFacebookState();
}

class _WebViewFacebookState extends State<WebViewFacebook> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: WebView(
        initialUrl: 'https://www.facebook.com/',
      ),
    );
  }
}
