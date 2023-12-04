import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class SmallContainer extends StatefulWidget {
  const SmallContainer({
    super.key,
    required this.active,
  });

  final bool active;

  @override
  State<SmallContainer> createState() => _SmallContainerState();
}

class _SmallContainerState extends State<SmallContainer> {
  bool like = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: AppColors.transparentWhite.withOpacity(
          0.5,
        ),
      ),
      child: widget.active
          ? Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.03,
                vertical: height * 0.008,
              ),
              child: Text(
                acksia,
                style: MyTextSTyle.style500w10.copyWith(
                  color: AppColors.red,
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(3.8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    like = !like;
                  });
                },
                child: Icon(
                  like ? Icons.favorite_border : Icons.favorite,
                  size: 20,
                  color: AppColors.mainColor,
                ),
              ),
            ),
    );
  }
}
