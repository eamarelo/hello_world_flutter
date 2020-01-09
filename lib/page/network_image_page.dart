import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImagePage extends StatefulWidget {
  @override
  _NetworkImagePageState createState() => _NetworkImagePageState();
}

class _NetworkImagePageState extends State<NetworkImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Netork Image Cache')),
      body: Column(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl:
                "https://img.pngio.com/triforce-the-legend-of-zelda-android-google-play-the-legend-of-triforce-png-900_500.jpg",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
