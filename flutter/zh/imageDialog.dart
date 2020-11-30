import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog({@required this.sentPhoto});
  final String sentPhoto;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          image: DecorationImage(image: ExactAssetImage(sentPhoto)),
        ),
      ),
    );
  }
}
