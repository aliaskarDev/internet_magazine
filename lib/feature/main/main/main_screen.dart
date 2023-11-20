import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/images_path.dart';
import 'package:internet_magazine/feature/main/widgets/betssellers.dart';
import 'package:internet_magazine/feature/main/widgets/custom_painter.dart';
import 'package:internet_magazine/feature/main/widgets/main_button.dart';
import 'package:internet_magazine/feature/main/widgets/main_stories.dart';
import 'package:internet_magazine/feature/main/widgets/news_and_promotions.dart';
import 'package:internet_magazine/feature/main/widgets/store_adresses.dart';
import 'package:internet_magazine/ui/colors.dart';

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
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.myBlue,
        leading: const Icon(
          Icons.menu,
          color: MyColors.myWhite,
          size: 25,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
            ),
            child: const Icon(
              Icons.notifications_none,
              color: MyColors.myWhite,
              size: 25,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CurvedBottomClipper(),
            child: Container(
              padding: const EdgeInsets.only(bottom: 50),
              color: MyColors.myBlue,
              height: 300,
              alignment: Alignment.center,
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.015,
                ),
                child: const MainStories(),
              ),
              SizedBox(height: height * 0.01),
              Image.asset(
                MyImages.card,
                scale: 3,
              ),
              SizedBox(height: height * 0.02),
              const NewAndPromotions(),
              SizedBox(height: height * 0.02),
              const Betssellers(),
              const MainButton(),
              SizedBox(height: height * 0.02),
              const StoreAdresses(),
            ],
          ),
        ],
      ),
    );
  }
}
