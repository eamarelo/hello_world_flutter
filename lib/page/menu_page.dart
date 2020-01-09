import 'package:flutter/material.dart';
import 'package:hello_world_flutter/page/calculator_page.dart';
import 'package:hello_world_flutter/page/gallery_image_page.dart';
import 'package:hello_world_flutter/page/hero_animation_page.dart';
import 'package:hello_world_flutter/page/login_page.dart';
import 'package:hello_world_flutter/page/network_image_page.dart';
import 'package:hello_world_flutter/page/object_list_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'long_list_page.dart';

class MenuPageWidget extends StatefulWidget {
  @override
  _MenuPageWidgetState createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter demo app'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove('user');
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Container(),
                Expanded(
                  flex: 2,
                  child: Hero(
                    tag: 'image',
                    child: Image.asset(
                      'assets/test.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.blue,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Calculator',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {
                        print('Calculator clicked');
                        _goToCalculatorPage();
                      },
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Hero animation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {
                        print('Gallery clicked');
                        _goToAnimationPage();
                      },
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add_a_photo),
                          Text(
                            'Image Gallery',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {
                        print('Gallery clicked');
                        _goToGalleryPage();
                      },
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Network image',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        print('network clicked');
                        _goToNetworkPage();
                      },
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.playlist_add,
                            color: Colors.white,
                          ),
                          Container(
                            width: 12,
                          ),
                          Text(
                            'Long List',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {
                        print('Long List clicked');
                        _goToListPage();
                      },
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.featured_play_list,
                            color: Colors.white,
                          ),
                          Container(
                            width: 12,
                          ),
                          Text(
                            'Object List',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {
                        print('Oject List clicked');
                        _goObjectListPage();
                      },
                    ),
                    Container(
                      height: 21.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _goToNetworkPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NetworkImagePage();
    }));
  }

  _goToGalleryPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return GalleryImagePage();
    }));
  }

  _goToListPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LongListPage();
    }));
  }

  _goObjectListPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ObjectListPage();
    }));
  }

  _goToAnimationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HeroAnimationPage();
    }));
  }

  _goToCalculatorPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CalculatorWidgetPage();
    }));
  }
}
