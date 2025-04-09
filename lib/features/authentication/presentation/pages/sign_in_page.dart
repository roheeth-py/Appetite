import 'package:carousel_slider/carousel_slider.dart';
import 'package:cook/config/app_vectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/Custom_Outlined_icon_button.dart';
import '../widgets/custom_image_slider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CustomImageSlider(row: 1),
            // 10.verticalSpace,
            // CustomImageSlider(row: 2, initialOffset: 40,),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Welcome to Appètite",
                          style: Theme.of(context).textTheme.displayLarge),
                      Transform.flip(
                        flipX: true,
                        child: Text("👋",
                            style: Theme.of(context).textTheme.displayLarge),
                      ),
                    ],
                  ),
                  15.verticalSpace,
                  Text(
                    "The best recipe app you’ll ever need\nSimple, smart, and made for you.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  30.verticalSpace,
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12.5),
                              hintText: "xyz@gmail.com",
                              hintStyle:
                                  Theme.of(context).textTheme.labelLarge),
                        ),
                        10.verticalSpace,
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12.5),
                              hintText: "●●●●●●●",
                              hintStyle:
                                  Theme.of(context).textTheme.labelLarge),
                        ),
                      ],
                    ),
                  ),
                  40.verticalSpace,
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Text("  Or sign in with  "),
                      Expanded(child: Divider()),
                    ],
                  ),
                  30.verticalSpace,
                  const CustomOutlinedIconButton(
                    text: "Sign Up with Google",
                    icon: AppSvg.googleVector,
                  ),
                  12.5.verticalSpace,
                  const CustomOutlinedIconButton(
                    text: "Sign Up with Apple",
                    icon: AppSvg.appleVector,
                  ),
                  Text("")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
