import 'package:flutter/material.dart';
class SubScreen extends StatefulWidget {
  const SubScreen({Key? key}) : super(key: key);

  @override
  _SubScreenState createState() => _SubScreenState();
}

class _SubScreenState extends State<SubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub Screen'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            // POP DEN ROUTE CHI DINH
            // Navigator.popUntil(context, (route) {
            //   print('route: ${route}');
            //   return route.settings.name == '/day4';
            // });

            // POP VA XOA TAT CA CAC MAN HINH KHAC TRONG STACK TRU MAN HINH CHI DINH
            // DUNG CHU YEU TRONG TRUONG HOP, SPLASHSCREEN -> LOGIN, LOGIN -> HOME
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);

            // THAY THE MAN HINH HIEN TAI BANG MAN HINH KHAC
            // Navigator.pushReplacementNamed(context, '/day4');
          }, child: const Text('Back to Home screen'))
        ],
      ),
    );
  }
}
