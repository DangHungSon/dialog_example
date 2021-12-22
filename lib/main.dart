import 'package:dialog_example/day4dialog/day_4_dialog.dart';
import 'package:dialog_example/day5/google_screen.dart';
import 'package:dialog_example/sub_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Home Page'),
        '/day4': (context) => const Day4Dialog(),
        '/subScreen': (context) => const SubScreen()
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            // DAY 4 - DIALOG
            ElevatedButton(
                onPressed: () => _transitionToDay4Dialog(),
                child: const Text('Day 4 Dialog')),
            // ElevatedButton(
            //     onPressed: () {
            //       // Di chuyen sang man hinh khac (khong yeu cau route)
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (_) => const Day4Dialog(
            //                     data: 'Xin chao',
            //                   )));
            //       // Di chuyen man hinh voi route
            //       // Navigator.pushNamed(context, '/day4', arguments: {'data': 'hello321'});
            //     },
            //     child: const Text('Di chuyen man hinh')),

            ElevatedButton(
              child: const Text('Day 5!'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const GoogleScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }

  // mo ta o day la lam gi
  void _transitionToDay4Dialog() => Navigator.push(
      context, MaterialPageRoute(builder: (_) => const Day4Dialog()));
}
