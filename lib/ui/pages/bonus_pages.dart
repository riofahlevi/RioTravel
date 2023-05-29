// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        "Rio Fahlevi",
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    ),
                  ),
                ),
                Text(
                  "Pay",
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              "Balance",
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              "IDR 20.000.000",
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 26,
              ),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus 🎉",
          style: blackTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 32,
          ),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          "We give you early credit so that\n you can buy a fligt ticket",
          style: greyTextStyle.copyWith(
            fontWeight: light,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return Container(
        height: 55,
        width: 220,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subTitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
