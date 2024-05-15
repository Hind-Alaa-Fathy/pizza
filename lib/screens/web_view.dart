import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../shared_component/app_header_widget.dart';

class WebView extends StatelessWidget {
  final String uri;
  const WebView({super.key,required this.uri});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
       body: InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri(uri)),
       ),
    );
  }
}