import 'package:flutter/material.dart';
import 'package:nativeflplug/nativeflplug.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  sayHelloFromGo() {
    print('sayHelloFromGo');
    final a = NativeHelper().testPlus(1, 2);
    print('call go result = $a');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Call Go"),
            onPressed: sayHelloFromGo,
          ),
        ),
      ),
    );
  }
}
