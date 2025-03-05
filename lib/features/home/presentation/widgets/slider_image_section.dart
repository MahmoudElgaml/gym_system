import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_images.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderImageSection extends StatefulWidget {
  const SliderImageSection({super.key});
  static const List<String> imgList = [
    Assets.gym1,
    Assets.gym2,
    Assets.gym3,
  ];

  @override
  State<SliderImageSection> createState() => _SliderImageSectionState();
}

class _SliderImageSectionState extends State<SliderImageSection> {
  int yourActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            textAlign: TextAlign.start,
            AppString.viewAll,
            style: AppFonts.textMedium16(context)
                .copyWith(color: AppColor.primaryColor),
          ),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              items: SliderImageSection.imgList
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          item,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                animateToClosest: false,
                enlargeCenterPage: false,
                viewportFraction: 1,
                enlargeFactor: .5,
              
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    yourActiveIndex = index;
                  });
                },
              ),
            ),
            AnimatedSmoothIndicator(
              activeIndex: yourActiveIndex,
              count: 3,
              effect: const WormEffect(
                activeDotColor: AppColor.primaryColor,
                radius: 10,
                dotWidth: 10,
                dotHeight: 10,
              ),

            )
          ],
        ),
      ],
    );
  }
}
