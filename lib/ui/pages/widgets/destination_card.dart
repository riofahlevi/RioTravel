import 'package:flutter/material.dart';
import 'package:travelapp_bwa/models/destination_model.dart';
import 'package:travelapp_bwa/ui/pages/detail_page.dart';
import '../../../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;

  const DestinationCard(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  DetailPage(destination),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: defaultMargin),
        padding: const EdgeInsets.all(10),
        width: 200,
        height: 323,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(destination.imageUrl)),
                  borderRadius: BorderRadius.circular(18)),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(18))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(right: 2),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      Text(
                        destination.rating.toString(),
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    destination.city,
                    style: greyTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
