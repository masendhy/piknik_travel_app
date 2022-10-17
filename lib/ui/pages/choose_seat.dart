import 'package:flutter/material.dart';
import 'package:piknik/core.dart';
import 'package:piknik/ui/pages/checkout_page.dart';
import 'package:piknik/ui/widgets/custom_button.dart';
import 'package:piknik/ui/widgets/seat_item.dart';

class ChooseSeat extends StatelessWidget {
  Widget title() {
    return Container(
      child: Text(
        'Select Your\nFavorite Seat',
        style:
            blackTextStyle.copyWith(fontSize: 26, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget seatStatus() {
    return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: availablekColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: blackColor)),
            ),
            Text('Available',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                )),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: blackColor, borderRadius: BorderRadius.circular(5)),
            ),
            Text('Selected',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                )),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: greyColor, borderRadius: BorderRadius.circular(5)),
            ),
            Text('Unavailable',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                )),
          ],
        ));
  }

  Widget selectSeat() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: whiteColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 48,
                height: 48,
                child: Center(
                    child: Text(
                  'A',
                  style: greyTextStyle.copyWith(fontWeight: FontWeight.w700),
                )),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                    child: Text(
                  'B',
                  style: greyTextStyle.copyWith(fontWeight: FontWeight.w700),
                )),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                    child: Text(
                  '',
                  style: greyTextStyle.copyWith(fontWeight: FontWeight.w700),
                )),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                    child: Text(
                  'C',
                  style: greyTextStyle.copyWith(fontWeight: FontWeight.w700),
                )),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                    child: Text(
                  'D',
                  style: greyTextStyle.copyWith(fontWeight: FontWeight.w700),
                )),
              ),
            ],
          ),
          //NOTE: SEAT 1
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(
                  status: 2,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '1',
                    style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  )),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                )
              ],
            ),
          ),
          // SEAT 2 :
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '2',
                    style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  )),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                )
              ],
            ),
          ),
          // SEAT 3 :
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 1),
                SeatItem(
                  status: 1,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '3',
                    style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  )),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                )
              ],
            ),
          ),
          // SEAT 4 :
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0),
                SeatItem(
                  status: 2,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '4',
                    style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  )),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                )
              ],
            ),
          ),
          // SEAT 5 :
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '5',
                    style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  )),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ]),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    'IDR 19.000.000',
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ]),
          )
        ],
      ),
    );
  }

  const ChooseSeat({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonCheckout() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 45),
        child: CustomButton(
            title: 'Buat Pesanan',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CheckOut()));
            }),
      );
    }

    return Scaffold(
      backgroundColor: backgorundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), seatStatus(), selectSeat(), buttonCheckout()],
        ),
      ),
    );
  }
}
