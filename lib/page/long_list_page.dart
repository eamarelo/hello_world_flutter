import 'package:flutter/material.dart';

class LongListPage extends StatefulWidget {
  @override
  _LongListPageState createState() => _LongListPageState();
}

class _LongListPageState extends State<LongListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long List Page'),
      ),
      body: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return _buildItem(index);
          }),
    );
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          print('tap item at item $index');
        },
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 100,
              width: 100,
              child: ClipOval(
                child: Container(
                    color: Colors.red, child: Image.asset('assets/test.png')),
              ),
            ),
            Expanded(
              child: Text(
                  'The -dekhdehfljémeoaozzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzjfzjejfefefpzjfezp'),
            )
          ],
        ),
      ),
    );
  }
}
