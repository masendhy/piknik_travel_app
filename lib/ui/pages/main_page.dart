import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/pages/home_page.dart';
import 'package:piknik/ui/widgets/custom_nav_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: whiteColor),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            CustomNavButton(
              iconUrl: Align(
                child: Icon(
                  Icons.home,
                  size: 33,
                ),
              ),
              isSelected: true,
            ),
            CustomNavButton(
              iconUrl: Align(
                  child: Icon(
                Icons.bookmark_add,
                size: 33,
                color: greyColor,
              )),
            ),
            CustomNavButton(
              iconUrl: Align(
                  child: Icon(
                Icons.credit_card,
                size: 33,
                color: greyColor,
              )),
            ),
            CustomNavButton(
              iconUrl: Align(
                  child: Icon(
                Icons.settings,
                size: 33,
                color: greyColor,
              )),
            )
          ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgorundColor,
      body: Stack(children: [buildContent(), bottomNavigation()]),
    );
  }
}
