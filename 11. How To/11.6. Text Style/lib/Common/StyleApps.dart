import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/ColorsApp.dart';

class StyleApps {
  StyleApps();

  TextStyle get textStyleGeneral => const TextStyle(
    color: textColors,
    fontFamily: "PlaywriteAT"
  );

  TextStyle get bodyStyle => textStyleGeneral.copyWith(
    fontWeight: FontWeight.w200
  );

  TextStyle get subtitleStyle => textStyleGeneral.copyWith(
    fontWeight: FontWeight.bold,
    color: textColors
  );

}
