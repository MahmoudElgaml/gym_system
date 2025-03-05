import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_images.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const List<String> imgList = [
    Assets.gym1,
    Assets.gym2,
    Assets.gym3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset(
            fit: BoxFit.fill,
            Assets.logo,
            width: 80,
            height: 80,
            color: AppColor.primaryColor,
          ),
        ],
        title: Text(
          AppString.home,
          style: AppFonts.textMedium20(context)
              .copyWith(color: AppColor.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: AppString.welcome,
                style: AppFonts.textMedium20(context),
                children: [
                  TextSpan(
                    text: 'Mahmoud Elgaml',
                    style: AppFonts.textBold16(context)
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
            ),
            const Gap(15),
            Column(
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
                CarouselSlider(
                
                  items: imgList
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
                  ),
                ),
                const Gap(15),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff2a2a2a),
                    
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                      
                        child: CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 5.0,
                          percent: .5,
                          center: Text(
                            "50%",
                            style: AppFonts.textMedium16(context).copyWith(
                              color: AppColor.primaryColor,
                            ),
                          ),
                          progressColor: Colors.green,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        AppString.capacity,
                        style: AppFonts.textMedium16(context)
                            .copyWith(color: AppColor.primaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
