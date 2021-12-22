import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoogleScreen extends StatefulWidget {
  const GoogleScreen({Key? key}) : super(key: key);

  @override
  _GoogleScreenState createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Day 5'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {

            }, child: const Text('Google View'))
          ],
        ),
      ),
    );
  }
}
