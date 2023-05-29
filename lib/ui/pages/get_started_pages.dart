// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:travelapp_bwa/ui/pages/splash_pages.dart';
import 'dart:async';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: const DecorationImage(
                  image: const AssetImage('assets/image_get_started.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like A Bird",
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore new world with us and let yourself get on amazing experiences",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 220,
                  height: 55,
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                    child: Text("Get Started",
                        style: whiteTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
