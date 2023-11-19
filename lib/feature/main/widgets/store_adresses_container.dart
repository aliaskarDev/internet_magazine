import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class StoreAdressesContainer extends StatelessWidget {
  const StoreAdressesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width * 0.6,
      margin: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.022,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 5,
            blurStyle: BlurStyle.solid,
          ),
        ],
        color: Colors.grey.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                storeName,
                style: MyTextSTyle.style500w14.copyWith(
                  color: MyColors.myBlack,
                ),
              ),
              Container(
                height: height * 0.037,
                width: width * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: MyColors.myWhite,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: MyColors.myBlack,
                  size: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: MyColors.myThirdGrey,
                size: 20,
              ),
              SizedBox(width: width * 0.02),
              Text(
                storeName,
                style: MyTextSTyle.style400w12.copyWith(
                  color: MyColors.myBlack,
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.005),
          Row(
            children: [
              const Icon(
                Icons.watch_later,
                color: MyColors.myThirdGrey,
                size: 20,
              ),
              SizedBox(width: width * 0.02),
              Text(
                time,
                style: MyTextSTyle.style500w12.copyWith(
                  color: MyColors.mySecondGrey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
