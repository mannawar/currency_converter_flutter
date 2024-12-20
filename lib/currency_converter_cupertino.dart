import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
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
  Widget build(BuildContext context) {
        return CupertinoPageScaffold(
          backgroundColor: CupertinoColors.systemGrey3,
          navigationBar: CupertinoNavigationBar(
              backgroundColor: CupertinoColors.systemGrey3,
              middle: Text("Allah is the only God we pray!!!!"),
            ),
            child: Center(
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
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  placeholder: 'Please enter amount in usd!',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal : true
                  ),
                ),
                const SizedBox(height: 10),
                CupertinoButton(
                  onPressed: convert, 
                  color: CupertinoColors.black,
                  child: const Text('Convert'),
                  )
                ]),
              ))
          );
  }
}