import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/colors.dart';

class CustomOutlinedIconButton extends StatelessWidget {
  const CustomOutlinedIconButton({required this.text, required this.icon, super.key});
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.eyeSafeWhite,
              foregroundColor: AppColors.eyeSafeBlack,
              side: const BorderSide(
                color: Colors.black38,
              ),
            ),
            child: Text(text),
          ),
          Positioned(
            left: 20,
            child: SvgPicture.asset(
              icon,
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
