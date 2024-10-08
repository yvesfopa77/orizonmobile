// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orizon/app/core/theme/app_theme.dart';

import 'package:orizon/app/global_widgets/icon_back_button.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final Color foregroundColor;
  final bool showleading;
  final Widget? trailing;
  const TopBar({
    super.key,
    this.title,
    this.leading,
    this.foregroundColor = AppTheme.black_color,
    this.showleading = true,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //  bottom: false,
      child: SizedBox(
        height: 50.h,
        child: Stack(
          children: [
            if (title != null)
              Align(
                alignment: Alignment.center,
                child: Text(
                  title!,
                  style: TextStyle(
                      color: foregroundColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            Align(
              alignment: Alignment.centerLeft,
              child: !showleading && leading == null
                  ? null
                  : leading ??
                      Padding(
                          padding:
                              EdgeInsets.only(left: 16.w, top: 4, bottom: 4),
                          child: IconBackButton(
                            foregroundColor: foregroundColor,
                          )),
            ),
            Align(alignment: Alignment.centerRight, child: trailing),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
