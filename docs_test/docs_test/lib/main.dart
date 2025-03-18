import 'package:flutter/material.dart';
import 'package:fpjs_pro_plugin/fpjs_pro_plugin.dart';
import 'package:fpjs_pro_plugin/error.dart';
import 'package:fpjs_pro_plugin/region.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initFingerprint();
  }

  // Initialize Fingerprint
  void initFingerprint() async {
    await FpjsProPlugin.initFpjs(
      'eajUlf6axysf2z89ZVWx', // insert your API key here
      region: Region.us, // Insert the data region of your Fingerprint workspace
    );
    identify();
  }

  // Identify visitor
  void identify() async {
    try {
      var visitorId = await FpjsProPlugin.getVisitorId();
      var visitorData = await FpjsProPlugin.getVisitorData();

      print('Visitor ID: $visitorId');
      print('Visitor data: $visitorData');
    } on FingerprintProError catch (e) {
      // Process the error
      print('Error identifying visitor: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Visitor ID'),
        ),
      ),
    );
  }
}
