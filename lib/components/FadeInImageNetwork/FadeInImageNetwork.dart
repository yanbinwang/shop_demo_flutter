import 'dart:typed_data';
import 'package:flutter/material.dart';

/// 占位符淡入显示图片
class FadeInImageNetwork extends StatelessWidget {
  FadeInImageNetwork({this.imageUrl, this.height, this.width});
  final String imageUrl;
  final double height;
  final double width;

  final Uint8List kTransparentImage = new Uint8List.fromList([
    0x89,
    0x50,
    0x4E,
    0x47,
    0x0D,
    0x0A,
    0x1A,
    0x0A,
    0x00,
    0x00,
    0x00,
    0x0D,
    0x49,
    0x48,
    0x44,
    0x52,
    0x00,
    0x00,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x01,
    0x08,
    0x06,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x15,
    0xC4,
    0x89,
    0x00,
    0x00,
    0x00,
    0x0A,
    0x49,
    0x44,
    0x41,
    0x54,
    0x78,
    0x9C,
    0x63,
    0x00,
    0x01,
    0x00,
    0x00,
    0x05,
    0x00,
    0x01,
    0x0D,
    0x0A,
    0x2D,
    0xB4,
    0x00,
    0x00,
    0x00,
    0x00,
    0x49,
    0x45,
    0x4E,
    0x44,
    0xAE,
  ]);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.memoryNetwork(
      image: imageUrl,
      placeholder: kTransparentImage,
      width: width ?? null,
      height: height ?? null, // 图片高度及占位高位
      fit: BoxFit.cover, // 图片剪裁方式
    );
  }
}
