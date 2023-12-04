import 'package:flutter/material.dart';
import 'package:internet_magazine/constants/images_path.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

class MainStories extends StatelessWidget {
  const MainStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Stories(
      spaceBetweenStories: 15,
      borderThickness: 0,
      circlePadding: 0,
      storyCircleTextStyle: MyTextSTyle.style400w12.copyWith(
        color: AppColors.lightGrey,
      ),
      storyItemList: [
        StoryItem(
          name: 'Скидки',
          thumbnail: const AssetImage(
            MyImages.stories1,
          ),
          stories: [
            Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://wallpaperaccess.com/full/16568.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        StoryItem(
          name: 'Акции',
          thumbnail: const AssetImage(
            MyImages.stories2,
          ),
          stories: [
            Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/31/bc/a9/31bca95ba39157a6cbf53cdf09dda672.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        StoryItem(
          name: 'Распродажа',
          thumbnail: const AssetImage(
            MyImages.stories3,
          ),
          stories: [
            Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://wallpaperaccess.com/full/16568.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        StoryItem(
          name: 'Подарки',
          thumbnail: const AssetImage(
            MyImages.stories4,
          ),
          stories: [
            Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://wallpaperaccess.com/full/16568.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        StoryItem(
          name: 'Подарки',
          thumbnail: const AssetImage(
            MyImages.stories5,
          ),
          stories: [
            Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://wallpaperaccess.com/full/16568.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
