// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travelapp_bwa/cubit/transaction_cubit.dart';
import 'package:travelapp_bwa/models/transaction_model.dart';
import 'package:travelapp_bwa/shared/theme.dart';
import 'package:travelapp_bwa/ui/pages/widgets/booking_detail_item.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kWhiteColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  NOTE : DESTINATION TILE
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/image_destination7.png'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sydney Opera",
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Australia",
                          style: blackTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
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
                        "4.5",
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //  NOTE : BOOKING DETAIL TEXT
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  "Booking Details",
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 16,
                  ),
                ),
              ),
              //  NOTE : Booking Detial Item
              BookingDetailItems(
                  title: 'Traveler',
                  valueText: '1 Person',
                  valueColor: kBlackColor),
              BookingDetailItems(
                  title: 'Seat', valueText: 'C5', valueColor: kBlackColor),
              BookingDetailItems(
                  title: 'Insurance',
                  valueText: 'YES',
                  valueColor: kGreenColor),
              BookingDetailItems(
                  title: 'Refundable', valueText: 'NO', valueColor: kRedColor),
              BookingDetailItems(
                  title: 'VAT', valueText: '45%', valueColor: kBlackColor),
              BookingDetailItems(
                  title: 'Price',
                  valueText: 'IDR 4.0O0.000',
                  valueColor: kBlackColor),
              BookingDetailItems(
                  title: 'Grand Total',
                  valueText: 'IDR 5.8000.000',
                  valueColor: kPrimaryColor),
              SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: kWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //  NOTE : DESTINATION TILE
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 16),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/image_destination6.png'))),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Danau Beratan",
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Singaraja",
                                style: blackTextStyle.copyWith(
                                  fontWeight: light,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: const EdgeInsets.only(right: 2),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icon_star.png'))),
                            ),
                            Text(
                              "4.5",
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //  NOTE : BOOKING DETAIL TEXT
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Booking Details",
                        style: blackTextStyle.copyWith(
                          fontWeight: semibold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    //  NOTE : Booking Detial Item
                    BookingDetailItems(
                        title: 'Traveler',
                        valueText: '3 Person',
                        valueColor: kBlackColor),
                    BookingDetailItems(
                        title: 'Seat',
                        valueText: 'C5,D1,D3',
                        valueColor: kBlackColor),
                    BookingDetailItems(
                        title: 'Insurance',
                        valueText: 'YES',
                        valueColor: kGreenColor),
                    BookingDetailItems(
                        title: 'Refundable',
                        valueText: 'NO',
                        valueColor: kRedColor),
                    BookingDetailItems(
                        title: 'VAT',
                        valueText: '45%',
                        valueColor: kBlackColor),
                    BookingDetailItems(
                        title: 'Price',
                        valueText: 'IDR 2.0O0.000',
                        valueColor: kBlackColor),
                    BookingDetailItems(
                        title: 'Grand Total',
                        valueText: 'IDR 3.8000.000',
                        valueColor: kPrimaryColor),
                    SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  NOTE : DESTINATION TILE
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 16),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(defaultRadius),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/image_destination4.png'))),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hill Heyo",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Australia",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: light,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: const EdgeInsets.only(right: 2),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon_star.png'))),
                                  ),
                                  Text(
                                    "4.5",
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //  NOTE : BOOKING DETAIL TEXT
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Booking Details",
                              style: blackTextStyle.copyWith(
                                fontWeight: semibold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          //  NOTE : Booking Detial Item
                          BookingDetailItems(
                              title: 'Traveler',
                              valueText: '1 Person',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Seat',
                              valueText: 'C5',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Insurance',
                              valueText: 'YES',
                              valueColor: kGreenColor),
                          BookingDetailItems(
                              title: 'Refundable',
                              valueText: 'NO',
                              valueColor: kRedColor),
                          BookingDetailItems(
                              title: 'VAT',
                              valueText: '45%',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Price',
                              valueText: 'IDR 4.0O0.000',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Grand Total',
                              valueText: 'IDR 5.8000.000',
                              valueColor: kPrimaryColor),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  NOTE : DESTINATION TILE
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 16),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(defaultRadius),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/image_destination9.png'))),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Payung Teduh",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Australia",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: light,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: const EdgeInsets.only(right: 2),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon_star.png'))),
                                  ),
                                  Text(
                                    "4.5",
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //  NOTE : BOOKING DETAIL TEXT
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Booking Details",
                              style: blackTextStyle.copyWith(
                                fontWeight: semibold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          //  NOTE : Booking Detial Item
                          BookingDetailItems(
                              title: 'Traveler',
                              valueText: '1 Person',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Seat',
                              valueText: 'C5',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Insurance',
                              valueText: 'YES',
                              valueColor: kGreenColor),
                          BookingDetailItems(
                              title: 'Refundable',
                              valueText: 'NO',
                              valueColor: kRedColor),
                          BookingDetailItems(
                              title: 'VAT',
                              valueText: '45%',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Price',
                              valueText: 'IDR 4.0O0.000',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Grand Total',
                              valueText: 'IDR 5.8000.000',
                              valueColor: kPrimaryColor),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  NOTE : DESTINATION TILE
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 16),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(defaultRadius),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/image_destination10.png'))),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Roma",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Australia",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: light,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: const EdgeInsets.only(right: 2),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon_star.png'))),
                                  ),
                                  Text(
                                    "4.5",
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //  NOTE : BOOKING DETAIL TEXT
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Booking Details",
                              style: blackTextStyle.copyWith(
                                fontWeight: semibold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          //  NOTE : Booking Detial Item
                          BookingDetailItems(
                              title: 'Traveler',
                              valueText: '1 Person',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Seat',
                              valueText: 'C5',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Insurance',
                              valueText: 'YES',
                              valueColor: kGreenColor),
                          BookingDetailItems(
                              title: 'Refundable',
                              valueText: 'NO',
                              valueColor: kRedColor),
                          BookingDetailItems(
                              title: 'VAT',
                              valueText: '45%',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Price',
                              valueText: 'IDR 4.0O0.000',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Grand Total',
                              valueText: 'IDR 5.8000.000',
                              valueColor: kPrimaryColor),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  NOTE : DESTINATION TILE
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 16),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(defaultRadius),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/image_destination2.png'))),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "White Houses",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Spain",
                                      style: blackTextStyle.copyWith(
                                        fontWeight: light,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: const EdgeInsets.only(right: 2),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon_star.png'))),
                                  ),
                                  Text(
                                    "4.8",
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //  NOTE : BOOKING DETAIL TEXT
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Booking Details",
                              style: blackTextStyle.copyWith(
                                fontWeight: semibold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          //  NOTE : Booking Detial Item
                          BookingDetailItems(
                              title: 'Traveler',
                              valueText: '2 Person',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Seat',
                              valueText: 'C5,D4',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Insurance',
                              valueText: 'YES',
                              valueColor: kGreenColor),
                          BookingDetailItems(
                              title: 'Refundable',
                              valueText: 'NO',
                              valueColor: kRedColor),
                          BookingDetailItems(
                              title: 'VAT',
                              valueText: '45%',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Price',
                              valueText: 'IDR 4.0O0.000',
                              valueColor: kBlackColor),
                          BookingDetailItems(
                              title: 'Grand Total',
                              valueText: 'IDR 5.8000.000',
                              valueColor: kPrimaryColor),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
