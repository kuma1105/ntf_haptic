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
                Vibration.vibrate(duration: 1000, amplitude: 50);
              }, child: Text("duration: 1000, amplitude: 50")),
            ),
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton(onPressed: () {
                Vibration.vibrate(duration: 1000, amplitude: 100);
              }, child: Text("duration: 1000, amplitude: 100")),
            ),
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton(onPressed: () {
                Vibration.vibrate(duration: 1000, amplitude: 150);
              }, child: Text("duration: 1000, amplitude: 150")),
            ),
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton(onPressed: () {
                Vibration.vibrate(duration: 1000, amplitude: 200);
              }, child: Text("duration: 1000, amplitude: 200")),
            )
          ],
        ),
      ),
    );
  }
}
