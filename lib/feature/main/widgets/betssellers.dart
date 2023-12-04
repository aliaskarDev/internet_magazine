import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/icons_path.dart';
import 'package:internet_magazine/constants/sheets.dart';
import 'package:internet_magazine/feature/main/widgets/betssellers_container.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class Betssellers extends StatelessWidget {
  const Betssellers({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                betssellers,
                style: MyTextSTyle.style700w16.copyWith(
                  color: MyColors.myBlack,
                ),
              ),
              Row(
                children: [
                  Text(
                    all,
                    style: MyTextSTyle.style500w14.copyWith(
                      color: MyColors.mySecondBlue,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 15,
                    color: AppColors.mainColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.005),
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.03,
          ),
          child: SizedBox(
            height: height * 0.37,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => BetssellersContainer(
                active: haveAndHaved[index],
              ),
              itemCount: haveAndHaved.length,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        SvgPicture.asset(
          MyIcons.pagination,
        ),
      ],
    );
  }
}
