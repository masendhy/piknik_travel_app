import 'package:flutter/material.dart';
import 'package:piknik/core.dart';

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
          left: 2 * defaultMargin,
          right: 2 * defaultMargin,
        ),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Padding(
          padding: EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/kuta.jpeg'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.circular(defaultRadius))),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/nasionalpark.jpeg'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.circular(defaultRadius))),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/waterboom.jpeg'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.circular(defaultRadius))),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                        fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.task_alt,
                            color: blackColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Kids Park',
                            style: blackTextStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.task_alt,
                            color: blackColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Honor Bridge',
                            style: blackTextStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.task_alt,
                            color: blackColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'City Museum',
                            style: blackTextStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.task_alt,
                            color: blackColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Central Mall',
                            style: blackTextStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );
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
