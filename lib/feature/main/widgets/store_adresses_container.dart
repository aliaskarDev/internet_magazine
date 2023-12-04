import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/icons_path.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class StoreAdressesContainer extends StatelessWidget {
  const StoreAdressesContainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.45,
      margin: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        vertical: height * 0.015,
        horizontal: width * 0.04,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: Colors.grey.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 3.5,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                storeName,
                style: MyTextSTyle.style500w14.copyWith(
                  color: MyColors.myBlack,
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            children: [
              SvgPicture.asset(MyIcons.adress),
              SizedBox(width: width * 0.02),
              Text(
                street,
                style: MyTextSTyle.style400w12.copyWith(
                  color: MyColors.myBlack,
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.005),
          Row(
            children: [
              SvgPicture.asset(MyIcons.time),
              SizedBox(width: width * 0.02),
              Text(
                time,
                style: MyTextSTyle.style400w12.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                openMap,
                style: MyTextSTyle.style400w12.copyWith(
                  color: AppColors.grey2,
                ),
              ),
              const Icon(
                Icons.arrow_forward_rounded,
                size: 20,
                color: AppColors.grey2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
