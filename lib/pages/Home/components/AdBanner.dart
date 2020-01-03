import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  final String adPicture;
  AdBanner({Key key, @required this.adPicture});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(adPicture),
    );
  }
}
