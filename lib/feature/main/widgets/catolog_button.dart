import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class CatologButton extends StatelessWidget {
  const CatologButton({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/catolog');
      },
      child: Container(
        height: height * 0.06,
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.02,
        ),
        padding: EdgeInsets.only(
          left: width * 0.19,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: AppColors.lightestMainColor,
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(width: width * 0.015),
              Text(
                catolog,
                style: MyTextSTyle.style500w20.copyWith(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              const Icon(
                Icons.arrow_forward_rounded,
                size: 25,
                color: AppColors.mainColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
