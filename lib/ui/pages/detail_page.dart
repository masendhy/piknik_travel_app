import 'package:flutter/material.dart';
import 'package:piknik/core.dart';
import 'package:piknik/ui/pages/choose_seat.dart';
import 'package:piknik/ui/widgets/custom_button.dart';
import 'package:piknik/ui/widgets/interest_item.dart';
import 'package:piknik/ui/widgets/photos_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/bali.jpg'))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 285),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black.withOpacity(0),
              Colors.black.withOpacity(0.3)
            ])),
      );
    }

    Widget kontenBoard() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
            top: 370, left: defaultMargin, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Denpasar',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    'Bali',
                    style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '4.8',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget detailCard() {
      return Container(
          width: double.infinity,
          height: 450,
          margin: EdgeInsets.only(
            top: 450,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            child: ListView(children: [
              Text(
                'About',
                style: blackTextStyle.copyWith(
                    fontSize: 17, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Paket Tour Bali dengan pilihan wisata yang menartik akan menjadikan liburan anda nyaman. Abadikan moment indah anda di bali dan segera nikmati paket tour bali menarik kami.'),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Photo',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PhotosItem(imageUrl: 'assets/kuta.jpeg'),
                        PhotosItem(imageUrl: 'assets/nasionalpark.jpeg'),
                        PhotosItem(imageUrl: 'assets/waterboom.jpeg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                        fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      InterestItem(
                        item: 'Kids Park',
                      ),
                      InterestItem(
                        item: 'City Museum',
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InterestItem(
                        item: 'Honor Bridge',
                      ),
                      InterestItem(
                        item: 'Central Mall',
                      )
                    ],
                  )
                ],
              ),
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30),
                  child: Row(children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 2.500.000',
                            style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'per orang',
                            style: greyTextStyle.copyWith(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    CustomButton(
                      title: 'Pesan Sekarang',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseSeat()));
                      },
                      width: 170,
                    ),
                  ])),
            ]),
          ));
    }

    return Scaffold(
      backgroundColor: backgorundColor,
      body: Stack(children: [
        backgroundImage(),
        customShadow(),
        kontenBoard(),
        detailCard()
      ]),
    );
  }
}
