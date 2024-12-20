
import 'package:flutter/material.dart';

class CurrencyConverterMaterialApp extends StatefulWidget {
  const CurrencyConverterMaterialApp({super.key});
  @override
  State createState() => _CurrencyConverterMaterialAppState();

}

class _CurrencyConverterMaterialAppState extends State<CurrencyConverterMaterialApp>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  
  void convert(){
    result = double.parse(textEditingController.text) * 85;        
    setState(() {
    });
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignCenter
                  ),
                  borderRadius: BorderRadius.circular(5),
                );
     return Scaffold(backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Allah is the only God we pray!!!!"),
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [ Text(
              'INR ${result != 0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}', 
            style: TextStyle(
                fontSize: 55, fontWeight: 
                FontWeight.bold, 
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 255, 255, 255), 
                )),
            TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                hintText:  "Please enter the amount in INR", 
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border              
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal : true
                ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: convert, 
              style: ElevatedButton.styleFrom(
                backgroundColor: (Colors.black),
                foregroundColor: (Colors.white),
                minimumSize: (Size(double.infinity, 50)
                ),
                shape: (RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)))
              ),
              child: Text('Convert'),
              )
            ]),
          ))
      );
  }
}

