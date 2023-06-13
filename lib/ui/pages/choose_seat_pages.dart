// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travelapp_bwa/cubit/seat_cubit.dart';
import 'package:travelapp_bwa/models/destination_model.dart';
import 'package:travelapp_bwa/models/transaction_model.dart';
import 'package:travelapp_bwa/shared/theme.dart';
import 'package:travelapp_bwa/ui/pages/checkout_pages.dart';
import 'package:travelapp_bwa/ui/pages/widgets/custom_button.dart';
import 'package:travelapp_bwa/ui/pages/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget checkOutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            title: 'Continue to Checkout',
            onPressed: () {
              int price = destination.price * state.length;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckOutPages(
                    TransactionModel(
                      destination: destination,
                      amountOfTraveler: state.length,
                      selectedSeat: state.join(', '),
                      insurance: true,
                      refundable: false,
                      vat: 0.45,
                      price: price,
                      grandTotal: price + (price * 0.45).toInt(),
                    ),
                  ),
                ),
              );
            },
            margin: const EdgeInsets.only(top: 30, bottom: 46),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          seatStatus(),
          selectedSeat(),
          checkOutButton(),
        ],
      ),
    );
  }

//  destination
  Widget title() {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: Text("Select Your\nFavorite Seat",
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          )),
    );
  }

  Widget seatStatus() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          //  NOTE : Available
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(left: 10, right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_available.png'),
              ),
            ),
          ),
          Text(
            "Avaible",
            style: blackTextStyle,
          ),
          Container(
            //  NOTE : Selected
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(left: 10, right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_selected.png'),
              ),
            ),
          ),
          Text(
            "Selected",
            style: blackTextStyle,
          ),
          Container(
            //  NOTE : Unavailable
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(left: 10, right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_unavailable.png'),
              ),
            ),
          ),
          Text(
            "Unavailable",
            style: blackTextStyle,
          )
        ],
      ),
    );
  }

  Widget selectedSeat() {
    return BlocBuilder<SeatCubit, List<String>>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 22),
          margin: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: kWhiteColor),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //  NOTE : SEAT INDICATOR ALFHABET
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'A',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'B',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'C',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'D',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //   NOTE : SEAT 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    id: 'A1',
                    isAvailable: false,
                  ),
                  const SeatItem(
                    id: 'B1',
                    isAvailable: false,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  const SeatItem(
                    id: 'C1',
                  ),
                  const SeatItem(
                    id: 'D1',
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A2',
                    ),
                    const SeatItem(
                      id: 'B2',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '2',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C2',
                    ),
                    const SeatItem(
                      id: 'D2',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A3',
                    ),
                    const SeatItem(
                      id: 'B3',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '3',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C3',
                    ),
                    const SeatItem(
                      id: 'D3',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A4',
                    ),
                    const SeatItem(
                      id: 'B4',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '4',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C4',
                    ),
                    const SeatItem(
                      id: 'D4',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A5',
                    ),
                    const SeatItem(
                      id: 'B5',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '5',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C5',
                    ),
                    const SeatItem(
                      id: 'D5',
                    ),
                  ],
                ),
              ),
              //  NOTE : YOUR SEAT
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Seat",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        state.join(', '),
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                          .format(state.length * destination.price),
                      style: purpTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
