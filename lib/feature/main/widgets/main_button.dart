import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/icons_path.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/catolog');
      },
      child: Container(
        height: height * 0.08,
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.02,
        ),
        padding: EdgeInsets.only(
          left: width * 0.19,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            38,
          ),
          color: MyColors.mySecondBlue,
        ),
        child: Center(
          child: Row(
            children: [
              SvgPicture.asset(
                MyIcons.layer,
              ),
              SizedBox(width: width * 0.015),
              Text(
                catolog,
                style: MyTextSTyle.style500w20.copyWith(
                  color: MyColors.mySecondWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
