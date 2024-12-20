import 'package:currency_converter/currency_converter_cupertino.dart';
import 'package:currency_converter/currency_converter_materialapp.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: CurrencyConverterMaterialApp()
    );
  }

}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CurrencyConverterCupertinoPage();
  }
}