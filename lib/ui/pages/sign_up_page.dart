import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/pages/bonus_page.dart';
import 'package:piknik/ui/widgets/custom_button.dart';
import 'package:piknik/ui/widgets/custom_form_input.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    //NOTE : Widget title
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Dapatkan pengalaman yang tak terlupakan',
          style: blackTextStyle.copyWith(
              fontSize: 24, fontWeight: FontWeight.w600),
        ),
      );
    }

// NOTE : Widget nameInput
    Widget inputSection() {
      Widget nameInput() {
        return CustomFormInput(title: 'Full Name', hintText: 'John Due');
        // return Container(
        //   margin: EdgeInsets.only(bottom: 20),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Full Name',
        //         style: blackTextStyle.copyWith(fontSize: 15, color: blackColor),
        //       ),
        //       SizedBox(
        //         height: 6,
        //       ),
        //       TextFormField(
        //         cursorColor: blackColor,
        //         decoration: InputDecoration(
        //             hintText: 'John Due',
        //             border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius)),
        //             focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius),
        //                 borderSide: BorderSide(color: blackColor))),
        //       )
        //     ],
        //   ),
        // );
      }

      Widget emailInput() {
        return CustomFormInput(
            title: 'Email Address', hintText: 'contoh@email.com');
        // Container(
        //   margin: EdgeInsets.only(bottom: 20),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Email Address',
        //         style: blackTextStyle.copyWith(fontSize: 15, color: blackColor),
        //       ),
        //       SizedBox(
        //         height: 6,
        //       ),
        //       TextFormField(
        //         cursorColor: blackColor,
        //         decoration: InputDecoration(
        //             hintText: 'example@email.com',
        //             border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius)),
        //             focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius),
        //                 borderSide: BorderSide(color: blackColor))),
        //       )
        //     ],
        //   ),
        // );
      }

// NOTE : Widget PasswordInput
      Widget passwordInput() {
        return CustomFormInput(
          title: 'Password',
          hintText: 'password kamu',
          obscureText: true,
        );

        // Container(
        //   margin: EdgeInsets.only(bottom: 20),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Password',
        //         style: blackTextStyle.copyWith(fontSize: 15, color: blackColor),
        //       ),
        //       SizedBox(
        //         height: 6,
        //       ),
        //       TextFormField(
        //         cursorColor: blackColor,
        //         obscureText: true,
        //         decoration: InputDecoration(
        //             hintText: 'your password',
        //             border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius)),
        //             focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius),
        //                 borderSide: BorderSide(color: blackColor))),
        //       )
        //     ],
        //   ),
        // );
      }

// NOTE : Widget HobbyInput
      Widget hobbyInput() {
        return CustomFormInput(title: 'Hobby', hintText: 'Berenang');

        // Container(
        //   margin: EdgeInsets.only(bottom: 30),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Hobby',
        //         style: blackTextStyle.copyWith(fontSize: 15, color: blackColor),
        //       ),
        //       SizedBox(
        //         height: 6,
        //       ),
        //       TextFormField(
        //         cursorColor: blackColor,
        //         decoration: InputDecoration(
        //             hintText: 'Reading',
        //             border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius)),
        //             focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(defaultRadius),
        //                 borderSide: BorderSide(color: blackColor))),
        //       )
        //     ],
        //   ),
        // );
      }

      // NOTE : submitButton

      Widget submitButton() {
        return CustomButton(
            title: 'Mulai Gabung',
            width: double.infinity,
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            });

        // dijadikan satu dalam custom_button
        //  Container(
        //     width: double.infinity,
        //     height: 55,
        //     child: TextButton(
        //       child: Text(
        //         'Bergabung Sekarang',
        //         style: whiteTextStyle.copyWith(fontSize: 18),
        //       ),
        //       onPressed: () {
        //         Navigator.pushNamed(context, '/bonus');
        //       },
        //       style: TextButton.styleFrom(
        //           backgroundColor: blackColor,
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(defaultRadius))),
        //     ));
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(children: [
          nameInput(),
          emailInput(),
          passwordInput(),
          hobbyInput(),
          submitButton()
        ]),
      );
    }

// Widget atcButton
    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 75),
        child: Text(
          'Term and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16, decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgorundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
