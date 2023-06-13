// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:travelapp_bwa/ui/pages/widgets/custom_button.dart';
import '../../shared/theme.dart';
import 'package:travelapp_bwa/ui/pages/splash_pages.dart';
import 'dart:async';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image_get_started.png'),
              ),
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
                const SizedBox(
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
                CustomButton(
                    title: 'Get Started',
                    width: 220,
                    margin: const EdgeInsets.only(bottom: 80, top: 50),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
