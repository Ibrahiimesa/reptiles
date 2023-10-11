import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReptileWebView extends StatelessWidget {
  static const routeName = '/reptile_web';

  final String url;

  const ReptileWebView({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: url,
        ),
      ),
    );
  }
}