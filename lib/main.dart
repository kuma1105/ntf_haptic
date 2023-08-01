import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NTF Haptic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'No Touch Fitness Haptic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton(onPressed: () {
                Vibration.vibrate(pattern: [1000, 500, 1000, 500, 1000, 500],
                    intensities: [1, 50, 1, 50, 1, 50]);
              }, child: Text("duration: 500ms\namplitude: 50\ninterval: 1000ms")),
            ),
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton(onPressed: () {
                Vibration.vibrate(pattern: [750, 500, 750, 500, 750, 500],
                    intensities: [1, 100, 1, 100, 1, 100]);
              }, child: Text("duration: 500\namplitude: 100\ninterval: 750ms")),
            ),
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton(onPressed: () {
                Vibration.vibrate(pattern: [500, 500, 500, 500, 500, 500],
                    intensities: [1, 150, 1, 150, 1, 150]);
              }, child: Text("duration: 500\namplitude: 150\ninterval: 500ms")),
            ),
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton(onPressed: () {
                Vibration.vibrate(pattern: [250, 500, 250, 500, 250, 500],
                    intensities: [1, 200, 1, 200, 1, 200]);
              }, child: Text("duration: 500\namplitude: 200\ninterval: 250ms")),
            ),
          ],
        ),
      ),
    );
  }
}
