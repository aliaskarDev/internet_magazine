import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/feature/main/widgets/store_adresses_container.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class StoreAdresses extends StatelessWidget {
  const StoreAdresses({super.key});

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
                storeAdresses,
                style: MyTextSTyle.style700w16.copyWith(
                  color: MyColors.myBlack,
                ),
              ),
              Text(
                all,
                style: MyTextSTyle.style500w14.copyWith(
                  color: MyColors.mySecondBlue,
                ),
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
            height: height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const StoreAdressesContainer(),
              itemCount: 5,
            ),
          ),
        ),
      ],
    );
  }
}
