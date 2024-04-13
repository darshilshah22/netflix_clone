import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';
import '../constants/text_theme.dart';

Widget buildButton(
    {required VoidCallback onTap,
    required String text,
    Color? color,
    Color? borderColor}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.only(top: bodyRegular, bottom: bodyRegular),
      decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(4),
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 1.5)),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: AppTextTheme.bodyPrimary.copyWith(
            letterSpacing: 1.1,
          ),
        ),
      ),
    ),
  );
}

Widget customTextFormField(
    {TextEditingController? controller, String? hint, bool isDark = false}) {
  return TextFormField(
    controller: controller,
    cursorColor: isDark ? Colors.white : Colors.black,
    cursorWidth: 1,
    decoration: InputDecoration(
      filled: isDark,
      fillColor: AppColors.grey2,
      label: Text(
        hint!,
        style: TextStyle(color: isDark ? Colors.white54 : Colors.black54),
      ),
      floatingLabelStyle: TextStyle(
          color: isDark ? Colors.white : Colors.black,
          fontWeight: FontWeight.w400),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: isDark ? Colors.transparent : Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: isDark ? AppColors.grey2 : Colors.grey),
      ),
      suffix: const Text(
        'SHOW',
        style: TextStyle(letterSpacing: 1.1, color: Colors.white38),
      ),
    ),
  );
}
