import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    required this.image,
    required this.title,
    required this.moove,
  });

  final String title;
  final String image;
  final bool moove;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.4,
      margin: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.02,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: MyColors.myWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.005,
              horizontal: width * 0.02,
            ),
            child: Text(
              title,
              style: MyTextSTyle.style500w14.copyWith(
                color: MyColors.myBlack,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.005,
              horizontal: width * 0.02,
            ),
            child: Text(
              allTovar,
              style: MyTextSTyle.style400w12.copyWith(
                color: AppColors.greySecond,
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: moove
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        image,
                        scale: 4,
                      ),
                    ],
                  )
                : Image.asset(
                    image,
                    scale: 3.2,
                  ),
          ),
        ],
      ),
    );
  }
}
