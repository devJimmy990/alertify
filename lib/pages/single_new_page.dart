// import 'package:flutter/material.dart';
// import 'package:news_app/model/model.news.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class SingleNewPage extends StatefulWidget {
//   final News singleNew;
//   const SingleNewPage({super.key, required this.singleNew});

//   @override
//   State<SingleNewPage> createState() => _SingleNewPageState();
// }

// class _SingleNewPageState extends State<SingleNewPage> {
//   WebViewController controller = WebViewController();
  
//   @override
//   void initState() {
//     super.initState();
//    controller = WebViewController()
//   ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   ..setBackgroundColor(const Color(0x00000000))
//   ..setNavigationDelegate(
//     NavigationDelegate(
//       onProgress: (int progress) {
//       },
//            onNavigationRequest: (NavigationRequest request) {
//         if (request.url.startsWith('https://www.youtube.com/')) {
//           return NavigationDecision.prevent;
//         }
//         return NavigationDecision.navigate;
//       },
//     ),
//   )
//   ..loadRequest(Uri.parse('https://flutter.dev'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: WebViewWidget(controller: controller));
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app/model/model.news.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewApp extends StatefulWidget {
  final News singleNew;
  const WebViewApp({super.key, required this.singleNew});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.singleNew.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}