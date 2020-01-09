import 'package:flutter/material.dart';
import 'package:hello_world_flutter/models/poney_model.dart';

class ObjectListPage extends StatefulWidget {
  @override
  _ObjectListPageState createState() => _ObjectListPageState();
}

class _ObjectListPageState extends State<ObjectListPage> {
  final listAnimatedKey = GlobalKey<AnimatedListState>();
  List<Pony> ponies = [];
  @override
  void initState() {
    super.initState();
    print('Elies');
    ponies.addAll([
      Pony('Guillaume', Colors.brown, 152),
      Pony('Serge', Colors.amber, 1000),
      Pony('Suli', Colors.green, 85),
      Pony('Nathan', Colors.yellow, 124),
      Pony('Solenne', Colors.grey, 98)
    ]);
    print(ponies.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My pony list"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                setState(() {
                  ponies.insert(0, Pony('Default pony', Colors.amber, 10));
                  listAnimatedKey.currentState
                      .insertItem(0, duration: Duration(seconds: 1));
                });
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: AnimatedList(
        key: listAnimatedKey,
        initialItemCount: ponies.length,
        itemBuilder: (context, index, animation) {
          Pony p = ponies[index];
          return SlideTransition(
            position: animation.drive(
                Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset.zero)
                    .chain(CurveTween(curve: Curves.easeInOutCirc))),
            child: _buildPony(p),
          );
        },
      ),
    );
  }

  Widget _buildPony(Pony pony) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        children: <Widget>[
          Text(
            pony.name,
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(pony.age.toString() + ' years old'),
          Spacer(),
          ClipOval(
            child: Container(
              color: pony.color,
              height: 24,
              width: 24,
            ),
          )
        ],
      ),
    );
  }
}
