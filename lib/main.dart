import 'package:flutter/material.dart';
import 'package:my_nfc_demo/nfcTest.dart';
import 'package:nfc_manager/nfc_manager.dart';

bool isNfcAvailable = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for the line below
  isNfcAvailable = await NfcManager.instance.isAvailable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NfcTest());
  }
}
