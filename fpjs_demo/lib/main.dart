import 'package:flutter/material.dart';
import 'package:fpjs_pro_plugin/error.dart' show FingerprintProError;
import 'package:fpjs_pro_plugin/fpjs_pro_plugin.dart';
import 'package:fpjs_pro_plugin/result.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  FingerprintJSProResponse? visitorData;

  @override
  void initState() {
    super.initState();
    initFingerprint();
  }

    
  void initFingerprint() async {
    try {
      await FpjsProPlugin.initFpjs(
        'eajUlf6axysf2z89ZVWx',
        // To do: why dees this error if set to true?
        extendedResponseFormat: true,
      );
      identify();
    } on FingerprintProError catch (e) {
      print(e);
    }
  }

  Future<void> identify() async {
    FingerprintJSProResponse? response;
    try {
      response = await FpjsProPlugin.getVisitorData();
      print(response);
      // use the visitor id
    } on FingerprintProError catch (e) {
      print(e);
      print(e.stacktrace);
      // visitorData = null;
      // process an error somehow
      // check lib/error.dart to get more info about error types
    }
    setState(() {
      visitorData = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello Fpjs World!'),
              Text('Visitor ID: ${visitorData?.visitorId ?? 'Unknown'}'),
              Text('Visitor Data: ${visitorData?.toJson()}'),
              ElevatedButton(
                onPressed: () {
                  identify();
                },
                child: Text('Identify'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
