import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:orizon/app/core/constants/images_string.dart';
import 'package:orizon/app/core/theme/text_theme.dart';
import 'package:orizon/app/global_widgets/horizontal_padding.dart';
import 'package:orizon/app/global_widgets/icon_back_button.dart';
import 'package:orizon/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Images.splash_bg,
            fit: BoxFit.cover,
          ),
          SafeArea(
              child: SizedBox.expand(
            child: Column(
              children: [
                30.verticalSpace,
                Container(
                  height: 72.r,
                  width: 72.r,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: SvgPicture.asset(Images.splash_omega),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: AspectRatio(
                    aspectRatio: 1.09,
                    child: SvgPicture.asset(
                      Images.splash_fidget,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                40.verticalSpace,
                Text(
                  'From your everyday\nspending',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s30.regular.white,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        left: 25.w,
                        top: -5,
                        child: SvgPicture.asset(
                            Images.splash_text_background_line)),
                    Text(
                      'TO INVESTMENT',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s30.extraBold.white,
                    ),
                  ],
                ),
                const Spacer(),
                HorizontalPadding(
                  child: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.ONBOARDING),
                      child: const Text("Lets's Get Started")),
                ),
                20.verticalSpace,
              ],
            ),
          ))
        ],
      ),
    );
  }
}
