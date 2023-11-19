import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/images_path.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class BetssellersContainer extends StatefulWidget {
  const BetssellersContainer({super.key});

  @override
  State<BetssellersContainer> createState() => _BetssellersContainerState();
}

class _BetssellersContainerState extends State<BetssellersContainer> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.33,
      width: width * 0.4,
      margin: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.02,
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
        color: MyColors.myWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                MyImages.tools,
                scale: 4,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: MyColors.myWhiteBlue,
                  child: active
                      ? IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            color: MyColors.mySecondBlue,
                            size: 18,
                          ),
                          onPressed: () {
                            setState(() {
                              active = !active;
                            });
                          },
                        )
                      : IconButton(
                          icon: const Icon(
                            Icons.favorite,
                            color: MyColors.mySecondBlue,
                            size: 18,
                          ),
                          onPressed: () {
                            setState(() {
                              active = !active;
                            });
                          },
                        ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            child: Text(
              sale,
              style: MyTextSTyle.style600w16.copyWith(
                color: MyColors.mySecondBlue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            child: Text(
              tools,
              style: MyTextSTyle.style500w12.copyWith(
                color: MyColors.myBlack,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            child: Row(
              children: [
                Text(
                  available,
                  style: MyTextSTyle.style600w10.copyWith(
                    color: MyColors.myGrey,
                  ),
                ),
                Text(
                  quantity,
                  style: MyTextSTyle.style600w10.copyWith(
                    color: MyColors.myRed,
                  ),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: MyColors.mySecondBlue,
                  radius: 18,
                  child: Icon(
                    Icons.add,
                    color: MyColors.myWhite,
                    size: 25,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
