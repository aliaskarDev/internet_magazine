import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/icons_path.dart';
import 'package:internet_magazine/constants/images_path.dart';
import 'package:internet_magazine/feature/main/widgets/betssellers.dart';
import 'package:internet_magazine/feature/main/widgets/catolog_button.dart';
import 'package:internet_magazine/feature/main/widgets/main_stories.dart';
import 'package:internet_magazine/feature/main/widgets/news_and_promotions.dart';
import 'package:internet_magazine/feature/main/widgets/store_adresses.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/gradient.dart';
import 'package:internet_magazine/ui/text_style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              Gradient3.first,
              Gradient3.second,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  top: 184,
                  child: Image.asset(
                    MyImages.ellipses,
                    scale: 4,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04,
                            vertical: height * 0.02,
                          ),
                          child: CircleAvatar(
                            radius: 27,
                            child: Image.asset(
                              MyImages.profile,
                              scale: 3,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              welcome,
                              style: MyTextSTyle.style300w13.copyWith(
                                color: AppColors.transparentWhite,
                              ),
                            ),
                            Text(
                              sultan,
                              style: MyTextSTyle.style600w14.copyWith(
                                color: AppColors.transparentWhite,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04,
                          ),
                          child: SvgPicture.asset(
                            MyIcons.notif,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.015,
                      ),
                      child: const MainStories(),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.07,
                        ),
                        child: Image.asset(
                          MyImages.card,
                          scale: 3,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(
                            40,
                          ),
                        ),
                        color: AppColors.lightestGrey,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.03),
                          const NewAndPromotions(),
                          SizedBox(height: height * 0.02),
                          const Betssellers(),
                          const CatologButton(),
                          SizedBox(height: height * 0.02),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.05,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  newsAndPromotions,
                                  style: MyTextSTyle.style600w17.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                                const Spacer(),
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
                          ),
                          SizedBox(height: height * 0.02),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.05,
                            ),
                            child: Image.asset(
                              MyImages.newsImage,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          SvgPicture.asset(MyIcons.pagination),
                          SizedBox(height: height * 0.02),
                          const StoreAdresses(),
                          SizedBox(height: height * 0.01),
                          SvgPicture.asset(MyIcons.pagination),
                          SizedBox(height: height * 0.02),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
