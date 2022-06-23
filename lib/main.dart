import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.mp3');
  }

  Expanded buildKey({required Color color, required int buildNumber}) =>
      Expanded(
        child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          onPressed: () {
            playSound(buildNumber);
          },
          child: Text('Note $buildNumber',
              style: const TextStyle(color: Colors.white)),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, buildNumber: 1),
              buildKey(color: Colors.orange, buildNumber: 2),
              buildKey(color: Colors.yellow, buildNumber: 3),
              buildKey(color: Colors.green, buildNumber: 4),
              buildKey(color: Colors.teal, buildNumber: 5),
              buildKey(color: Colors.blue, buildNumber: 6),
              buildKey(color: Colors.purple, buildNumber: 7),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              //     onPressed: () {
              //       playSound(1);
              //     },
              //     child: const Text('Note 1', style: TextStyle(color: Colors.white)),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
              //     onPressed: () {
              //       playSound(2);
              //     },
              //     child: const Text('Note 2', style: TextStyle(color: Colors.white)),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              //     onPressed: () {
              //       playSound(3);
              //     },
              //     child: const Text('Note 3', style: TextStyle(color: Colors.white)),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              //     onPressed: () {
              //       playSound(4);
              //     },
              //     child: const Text('Note 4', style: TextStyle(color: Colors.white)),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
              //     onPressed: () {
              //       playSound(5);
              //     },
              //     child: const Text('Note 5', style: TextStyle(color: Colors.white)),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
              //     onPressed: () {
              //       playSound(6);
              //     },
              //     child: const Text('Note 6', style: TextStyle(color: Colors.white)),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
              //     onPressed: () {
              //       playSound(7);
              //     },
              //     child: const Text('Note 7', style: TextStyle(color: Colors.white)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
