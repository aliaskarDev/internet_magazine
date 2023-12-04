import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/images_path.dart';
import 'package:internet_magazine/feature/main/widgets/small_container.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class BetssellersContainer extends StatefulWidget {
  const BetssellersContainer({
    super.key,
    required this.active,
  });

  final bool active;

  @override
  State<BetssellersContainer> createState() => _BetssellersContainerState();
}

class _BetssellersContainerState extends State<BetssellersContainer> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _secondincrementCounter() {
    setState(() {
      if (_counter <= 0) {
        _counter = 1;
      }
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.33,
      width: width * 0.43,
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
          SizedBox(
            height: height * 0.01,
          ),
          Center(
            child: Stack(
              children: [
                !widget.active
                    ? Image.asset(
                        MyImages.tool2,
                        scale: 4,
                      )
                    : Image.asset(
                        MyImages.tool1,
                        scale: 4,
                      ),
                if (!widget.active)
                  const Positioned(
                    top: 5,
                    left: 5,
                    child: SmallContainer(
                      active: true,
                    ),
                  ),
                if (!widget.active)
                  const Positioned(
                    top: 5,
                    right: 5,
                    child: SmallContainer(
                      active: false,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            child: Text(
              tools,
              style: MyTextSTyle.style500w14.copyWith(
                color: MyColors.myBlack,
              ),
            ),
          ),
          !widget.active
              ? Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02,
                      ),
                      child: Text(
                        sale2,
                        style: MyTextSTyle.style400w16.copyWith(
                          color: AppColors.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02,
                      ),
                      child: Text(
                        '2000',
                        style: MyTextSTyle.style400w16.copyWith(
                          color: AppColors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02,
                  ),
                  child: Text(
                    sale1,
                    style: MyTextSTyle.style400w16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            child: Text(
              widget.active ? have : dontHave,
              style: MyTextSTyle.style400w12.copyWith(
                color: widget.active ? AppColors.green : AppColors.red,
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.lightestGrey,
                radius: 18,
                child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: _secondincrementCounter,
                ),
              ),
              Text(
                '$_counter',
                style: MyTextSTyle.style500w20.copyWith(color: Colors.black),
              ),
              CircleAvatar(
                backgroundColor: AppColors.lightestGrey,
                radius: 18,
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: _incrementCounter,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
