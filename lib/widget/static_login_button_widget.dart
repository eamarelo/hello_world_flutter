import 'package:flutter/material.dart';

class StaticLoginButtonWidget extends StatelessWidget {
  final Color _color;

  StaticLoginButtonWidget(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: _color, borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Center(
            child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
