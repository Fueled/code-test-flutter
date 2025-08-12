import 'package:flutter/material.dart';
import 'package:code_test_flutter/gen/colors.gen.dart';
import 'package:code_test_flutter/gen/fonts.gen.dart';
import 'package:code_test_flutter/res/dimensions.dart';

abstract class TextStyles {
  static const TextStyle textBold = TextStyle(
    letterSpacing: 0.37,
    fontFamily: FontFamily.cabin,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.text_large,
    height: 1.23,
    color: ColorName.colorOnPrimary,
  );

  static const TextStyle textNormal = TextStyle(
    letterSpacing: 0.37,
    fontFamily: FontFamily.cabin,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.text_normal,
    height: 1.23,
    color: ColorName.colorOnPrimary,
  );
}
