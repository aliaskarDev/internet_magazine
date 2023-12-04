import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/sheets.dart';
import 'package:internet_magazine/feature/main/widgets/news_container.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class NewAndPromotions extends StatelessWidget {
  const NewAndPromotions({super.key});

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
                BottomText.catalog,
                style: MyTextSTyle.style600w17.copyWith(
                  color: MyColors.myBlack,
                ),
              ),
              Row(
                children: [
                  Text(
                    allCategories,
                    style: MyTextSTyle.style400w15.copyWith(
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
        SizedBox(height: height * 0.02),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.04,
          ),
          child: SizedBox(
            height: height * 0.065,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: const Icon(
                  Icons.search,
                ),
                hintText: search,
                helperStyle: MyTextSTyle.style400w15,
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.005),
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.03,
          ),
          child: SizedBox(
            height: height * 0.26,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => NewsContainer(
                moove: true,
                image: newsImage[index],
                title: newsText[index],
              ),
              itemCount: newsImage.length,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.03,
          ),
          child: SizedBox(
            height: height * 0.244,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => NewsContainer(
                moove: false,
                image: newsImage2[index],
                title: newsText2[index],
              ),
              itemCount: newsImage2.length,
            ),
          ),
        ),
      ],
    );
  }
}
