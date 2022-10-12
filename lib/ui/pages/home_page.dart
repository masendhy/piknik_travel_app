import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/widgets/destination_card.dart';
import 'package:piknik/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, top: 30, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo\nJohn Due',
                    style: blackTextStyle.copyWith(
                        fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text('Ingin terbang kemana hari ini ?',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ))
                ],
              ),
            ),
            Container(
              width: 75,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage('assets/profile.jpg'))),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Gunung Bromo',
                city: 'Malang - Jawa Timur',
                rating: '5.0',
                imageUrl: 'assets/bromo.jpg',
              ),
              DestinationCard(
                name: 'Denpasar',
                city: 'Bali',
                rating: '4.8',
                imageUrl: 'assets/bali.jpg',
              ),
              DestinationCard(
                name: 'Raja Ampat',
                city: 'Papua Barat',
                rating: '4.7',
                imageUrl: 'assets/raja-ampat.jpg',
              ),
              DestinationCard(
                name: 'Tari Dayak Pesaguan',
                city: 'Kalimantan Barat',
                rating: '4.8',
                imageUrl: 'assets/kalimantan-barat.jpg',
              ),
              DestinationCard(
                name: 'Candi Borobudur',
                city: 'Magelang - Central Java',
                rating: '4.6',
                imageUrl: 'assets/borobudur.jpg',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: 30, bottom: 100),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Promo Tahun Ini',
            style: blackTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w700),
          ),
          DestinationTile(
            name: 'Air Terjun Murukeba',
            city: 'Nusa Tenggara Timur',
            rating: '4.7',
            imageUrl: 'assets/ntt.jpg',
          ),
          DestinationTile(
            name: 'Monas',
            city: 'Jakarta',
            rating: '4.7',
            imageUrl: 'assets/jakarta.jpg',
          ),
          DestinationTile(
            name: 'Coban Rondo',
            city: 'Malang - Jawa Timur',
            rating: '4.7',
            imageUrl: 'assets/coban-rondo.jpg',
          ),
          DestinationTile(
            name: 'Wisata Air Panas Mamuya',
            city: 'Halmahera',
            rating: '4.7',
            imageUrl: 'assets/halmahera.jpeg',
          ),
          DestinationTile(
            name: 'Masjid Agung',
            city: 'Semarang',
            rating: '4.8',
            imageUrl: 'assets/masjid.jpg',
          ),
          DestinationTile(
            name: 'Gunung Rinjani',
            city: 'Nusa Tenggara Barat',
            rating: '4.8',
            imageUrl: 'assets/rinjani.jpg',
          ),
        ]),
      );
    }

    return ListView(
      children: [header(), popularDestination(), newDestination()],
    );
  }
}
