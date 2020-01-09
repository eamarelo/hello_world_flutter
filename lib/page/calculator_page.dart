import 'package:flutter/material.dart';

class CalculatorWidgetPage extends StatefulWidget {
  @override
  _CalculatorWidgetPageState createState() => _CalculatorWidgetPageState();
}

class _CalculatorWidgetPageState extends State<CalculatorWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[Text('0')],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: FloatingActionButton(
                            heroTag: 'AC',
                            child: Text('AC'),
                            backgroundColor: Colors.grey,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: FloatingActionButton(
                            heroTag: '+/-',
                            child: Text('+/-'),
                            backgroundColor: Colors.grey,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '%',
                            child: Text('%'),
                            backgroundColor: Colors.grey,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '÷',
                            child: Text('÷'),
                            backgroundColor: Colors.orange,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '7',
                            child: Text('7'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '8',
                            child: Text('8'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '9',
                            child: Text('9'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: 'X',
                            child: Text('X'),
                            backgroundColor: Colors.orange,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '4',
                            child: Text('4'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '5',
                            child: Text('5'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '6',
                            child: Text('6'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '-',
                            child: Text('-'),
                            backgroundColor: Colors.orange,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '1',
                            child: Text('1'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '2',
                            child: Text('2'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '3',
                            child: Text('3'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '+',
                            child: Text('+'),
                            backgroundColor: Colors.orange,
                            elevation: 5,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 2,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius:
                                    new BorderRadius.all(Radius.circular(40.0)),
                                color: Colors.white30),
                            child: Text(
                              '0',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 26.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '.',
                            child: Text('.'),
                            backgroundColor: Colors.white30,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: FloatingActionButton(
                            heroTag: '=',
                            child: Text('='),
                            backgroundColor: Colors.orange,
                            elevation: 0,
                            onPressed: () => {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
