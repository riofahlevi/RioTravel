import 'package:flutter/material.dart';

class PhotoItems extends StatelessWidget {
  final String imageUrl;

  const PhotoItems({Key? key,required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
