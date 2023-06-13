import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp_bwa/cubit/pages_cubit.dart';
import 'package:travelapp_bwa/shared/theme.dart';
import 'package:travelapp_bwa/ui/pages/widgets/custom_button.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_success.png'))),
            ),
            Text(
              "Well Booked 😍",
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'My Bookings',
              onPressed: () {
                context.read<PagesCubit>().setPage(1);
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              width: 220,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
    );
  }
}
