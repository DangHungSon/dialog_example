import 'package:dialog_example/custom_dialog.dart';
import 'package:flutter/material.dart';

class Day4Dialog extends StatefulWidget {
  final String? data;

  const Day4Dialog({Key? key, this.data}) : super(key: key);

  @override
  _Day4DialogState createState() => _Day4DialogState();
}

class _Day4DialogState extends State<Day4Dialog> {
  String _dataLayDuoc = '';

  @override
  void initState() {
    if (widget.data != null) _dataLayDuoc = widget.data!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments;
    // if (args != null) {
    //   var map = args as Map;
    //   _dataLayDuoc = map['data'];
    // }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Day 4 - Dialog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Open Dialog!'),
              onPressed: () => _openCustomDialog(context),
            ),

            // GO TO SUB SCREEN
            ElevatedButton(
              child: const Text('Open Sub Screen!'),
              onPressed: () => Navigator.pushNamed(context, '/subScreen'),
            ),
          ],
        ),
      ),
    );
  }

  // Function open custom dialog
  void _openCustomDialog(BuildContext context) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Dialog(
          backgroundColor: Colors.transparent, child: CustomDialog()));

  // Function show alert dialog
  void openDialog() => showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(title: const Text('SetState In Dialog'), actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'))
        ]),
      );

  // Function open simple dialog
  void openSimpleDialog() => showDialog(
      context: context,
      builder: (_) => const SimpleDialog(
            title: Text('simple'),
          ));
}
