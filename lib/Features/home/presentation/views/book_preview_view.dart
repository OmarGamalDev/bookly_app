import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BookPreviewView extends StatefulWidget {
  final String url;
  const BookPreviewView({super.key, required this.url});

  @override
  State<BookPreviewView> createState() => _BookPreviewViewState();
}

class _BookPreviewViewState extends State<BookPreviewView> {
  late final WebViewController controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
