import 'package:baixing/utils/util.dart';
import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  final String adPicture;
  AdBanner({Key key, @required this.adPicture});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: ImageUtils.getNetWorkImage('$adPicture'),
    );
  }
}
