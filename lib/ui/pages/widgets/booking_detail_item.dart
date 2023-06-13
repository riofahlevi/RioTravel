import 'package:flutter/material.dart';
import 'package:travelapp_bwa/shared/theme.dart';

class BookingDetailItems extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;

  const BookingDetailItems(
      {Key? key,
      required this.title,
      required this.valueText,
      required this.valueColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_check.png'))),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
            ),
          ),
          const Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
