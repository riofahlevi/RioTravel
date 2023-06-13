// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class InterestItems extends StatelessWidget {
  final String name;

  const InterestItems({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icon_check.png'))),
          ),
          Container(
            child: Text(
              name,
              style: blackTextStyle.copyWith(fontWeight: regular),
            ),
          )
        ],
      ),
    );
  }
}
