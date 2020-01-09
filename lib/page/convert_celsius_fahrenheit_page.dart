import 'package:flutter/material.dart';

class ConvertCelsiusFahrenheitPage extends StatefulWidget {
  @override
  _ConvertCelsiusFahrenheitPageState createState() =>
      _ConvertCelsiusFahrenheitPageState();
}

class _ConvertCelsiusFahrenheitPageState
    extends State<ConvertCelsiusFahrenheitPage> {
  final _textFieldController = TextEditingController(text: '0');
  final fahrenheit = TextEditingController(text: '32');

  void onChange(String value) {
    String finalValue = '';
    double valueToDouble = double.parse(value) ?? null;
    if (valueToDouble != null) {
      finalValue = (valueToDouble * 9 / 5 + 32).toString();
    }
    fahrenheit.text = finalValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convert Celsius to farenheit'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 32,
          ),
          TextField(
            controller: _textFieldController,
            onChanged: onChange,
            keyboardType: TextInputType.number,
          ),
          Container(
            height: 16,
          ),
          TextFormField(
            controller: fahrenheit,
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20.0),
          Container(
            height: 32,
          ),
          Container(
            height: 16,
          )
        ],
      ),
    );
  }
}
