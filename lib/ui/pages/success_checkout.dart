import 'package:flutter/material.dart';
import 'package:piknik/core.dart';
import 'package:piknik/ui/widgets/custom_button.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgorundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/booked.png",
            width: 150.0,
            height: 150.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pesanan Berhasil',
                style: blackTextStyle.copyWith(
                    fontSize: 30, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.celebration)
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Siap untuk menjelajahi Indonesia\ndengan pengalaman tak terlupakan?',
            style: greyTextStyle.copyWith(
                fontSize: 17, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
              title: 'Pesan Tiket Lagi',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              })
        ],
      )),
    );
  }
}
