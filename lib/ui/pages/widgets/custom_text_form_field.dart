import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class CustomTextFromField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFromField(
      {Key? key,
      required this.controller,
      required this.title,
      required this.hintText,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toString(),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obscureText,
            cursorColor: kBlackColor,
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ))),
          )
        ],
      ),
    );
  }
}
