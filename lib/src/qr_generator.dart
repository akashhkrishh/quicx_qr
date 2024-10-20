import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QuicxQR extends StatelessWidget {
  final String data;
  final double size;
  final Color? eyeColor;
  final Color? color; // Optional image path

  const QuicxQR({
    super.key,
    required this.data,
    this.size = 250,
    this.color = Colors.black,
    this.eyeColor = Colors.black, // Initialize embeddedImagePath
  });

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: data,
      version: QrVersions.auto,
      size: size,
      errorCorrectionLevel: QrErrorCorrectLevel.H,
      backgroundColor: Colors.black,
      dataModuleStyle: QrDataModuleStyle(
          color: color, dataModuleShape: QrDataModuleShape.circle),
      eyeStyle: QrEyeStyle(
        color: eyeColor,
        eyeShape: QrEyeShape.square,
      ),
    );
  }
}
