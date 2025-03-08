import 'package:flutter/material.dart';
import 'package:fpjs_pro_plugin/error.dart' show FingerprintProError;
import 'package:fpjs_pro_plugin/fpjs_pro_plugin.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    initFingerprint();
  }

  void initFingerprint() async {
    try {
      await FpjsProPlugin.initFpjs('eajUlf6axysf2z89ZVWx');
      identify();
    } on FingerprintProError catch (e) {
      print(e);
    }
  }

  void identify() async {
    try {
      var visitorId = await FpjsProPlugin.getVisitorId() ?? 'Unknown';
      print(visitorId);
      // use the visitor id
    } on FingerprintProError catch (e) {
      print(e);
      // process an error somehow
      // check lib/error.dart to get more info about error types
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello Fpjs World!'),
        ),
      ),
    );
  }
}
