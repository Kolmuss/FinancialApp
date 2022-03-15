import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const MaterialColor primary = MaterialColor(_primaryValue, <int, Color>{
    50: Color(0xFFE9F0FA),
    100: Color(0xFFC8DAF2),
    200: Color(0xFFA4C2EA),
    300: Color(0xFF7FA9E1),
    400: Color(0xFF6396DA),
    500: Color(_primaryValue),
    600: Color(0xFF417CCF),
    700: Color(0xFF3871C9),
    800: Color(0xFF3067C3),
    900: Color(0xFF2154B9),
  });
  static const int _primaryValue = 0xFF4884D4;

  static const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFFF3F7FF),
    200: Color(_primaryAccentValue),
    400: Color(0xFF8DB0FF),
    700: Color(0xFF749EFF),
  });
  static const int _primaryAccentValue = 0xFFC0D3FF;

  static const MaterialColor secondary = MaterialColor(_secondaryValue, <int, Color>{
    50: Color(0xFFFEF9E3),
    100: Color(0xFFFDF1B9),
    200: Color(0xFFFBE88B),
    300: Color(0xFFF9DF5D),
    400: Color(0xFFF8D83A),
    500: Color(_secondaryValue),
    600: Color(0xFFF6CC14),
    700: Color(0xFFF5C611),
    800: Color(0xFFF3C00D),
    900: Color(0xFFF1B507),
  });
  static const int _secondaryValue = 0xFFF7D117;

  static const MaterialColor secondaryAccent = MaterialColor(_secondaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_secondaryAccentValue),
    400: Color(0xFFFFE9B3),
    700: Color(0xFFFFE29A),
  });
  static const int _secondaryAccentValue = 0xFFFFF8E6;

  static const MaterialColor success = MaterialColor(_successValue, <int, Color>{
    50: Color(0xFFE3F9E7),
    100: Color(0xFFBAEFC3),
    200: Color(0xFF8CE59B),
    300: Color(0xFF5DDA72),
    400: Color(0xFF3BD254),
    500: Color(_successValue),
    600: Color(0xFF15C530),
    700: Color(0xFF11BD29),
    800: Color(0xFF0EB722),
    900: Color(0xFF08AB16),
  });
  static const int _successValue = 0xFF00BE5A;

  static const MaterialColor successAccent = MaterialColor(_successAccentValue, <int, Color>{
    100: Color(0xFFD6FFD9),
    200: Color(_successAccentValue),
    400: Color(0xFF70FF78),
    700: Color(0xFF57FF60),
  });
  static const int _successAccentValue = 0xFFA3FFA8;

  static const MaterialColor danger = MaterialColor(_dangerValue, <int, Color>{
    50: Color(0xFFFAE9E6),
    100: Color(0xFFF2C8C1),
    200: Color(0xFFE9A398),
    300: Color(0xFFE07E6E),
    400: Color(0xFFD9624F),
    500: Color(_dangerValue),
    600: Color(0xFFCD3F2B),
    700: Color(0xFFC73724),
    800: Color(0xFFC12F1E),
    900: Color(0xFFB62013),
  });
  static const int _dangerValue = 0xFFD24630;

  static const MaterialColor dangerAccent = MaterialColor(_dangerAccentValue, <int, Color>{
    100: Color(0xFFFFE8E6),
    200: Color(_dangerAccentValue),
    400: Color(0xFFFF8880),
    700: Color(0xFFFF7067),
  });
  static const int _dangerAccentValue = 0xFFFFB8B3;

  static const Color primaryText = Color(0xFF1E385B);
  static const Color primaryTextDisabled = Color(0x991E385B);
  static const Color inactiveText = Color(0xFF6F839A);
  static const Color iconText = Color(0xFF699DB7);
  static const Color darkSky = Color(0xFFE0EDFD);

  static const Color linkText = Color(0xFF7E9DAC);

  static const Color blueLight = Color(0xFFE9F4FF);
  static const Color lightSky = Color(0xFFF2F7FF);

  static const Color backgroundColor = Color(0xFFFFFFFF);

  static const Color greyLight = Color(0xFFE5E5E5);
  static const Color greyDark = Color(0xFFE5EBF0);
  static const Color greyDarker = Color(0xFF7A7D8C);
  static const Color grey = Color(0xFFEFEFEF);
  static const Color inactive = Color(0xFFBEC4D8);
  static const Color infoButton = Color(0xFFE7F0F9);

  static const Color yellowSecondary = Color(0xFF7C6909);

  static const Color info = Color(0xFFD8E6EC);

  static const Color iconGreyColor = Color(0xFF465E7B);

  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color brownColor = Color(0xFF630018);
  static const Color redColor = Color(0xFFE13838);
  static const Color lightRedColor = Color(0xFFFFE9E9);

  static const Color lightBlue = Color(0xFFE0EDFD);

  static const Color topTabActiveColor = greyDark;
  static const Color topTabInactiveColor = Color(0xFFF9F9FA);

  static const Color bottomBarPrimary = Color(0xFF0B6EC7);
  static const Color bottomBarInactive = Color(0xFFBBCCDB);

  static const Color creditText = Color(0xFF57B7E2);
  static const Color creditHint = Color(0xFFBEE1FF);

  static const Color greyBlue = Color(0xFFE7F2FC);

  static const Color filterDarkColor = Color(0xFFF1F4F7);

  static const Color descriptionColor = Color(0xFFDEECFA);
  static const Color infoSecondary = Color(0xFFE6EEF4);
  static const Color appBarIcon = Color(0xFFB5C0CD);

  static const Color warningRed = Color(0xFFFFCACA);

  static const Color warning = Color(0xFFFFCC4A);
  static const Color warningText = Color(0xFF604606);
}

class ChartColors {
  ChartColors._();


  static const Color showsInCatalogBg = Color(0xFFEDFEF5);
  static const Color showsInCatalogInnerBg = Color(0x263ACA7C);
  static const Color showsInCatalogTitle = Color(0xFF1C5C3B);
  static const Color showsInCatalogPointer = Color(0xCC3ACA7C);
  static const Color showsInCatalogLine = Color(0xCC3ACA7C);

  static const Color cardViewsBg = Color(0xFFFFF7F6);
  static const Color cardViewsInnerBg = Color(0x26E06E66);
  static const Color cardViewsTitle = Color(0xFF522A25);
  static const Color cardViewsPointer = Color(0xFFE06E66);
  static const Color cardViewsLine = Color(0xCCDA4D42);

  static const Color phoneClicksBg = Color(0xFFF1FAFF);
  static const Color phoneClicksBarColor = Color(0xFF39A1DC);
  static const Color phoneClicksTitle = Color(0xFF1E4860);

  static const Color messagesBg = Color(0xFFF7F6FF);
  static const Color messagesBarColor = Color(0xFF4947C0);
  static const Color messagesTitle = Color(0xFF261E65);

  static const Color trackingPriceBg = Color(0xFFFFF6FF);
  static const Color trackingPriceBarColor = Color(0xFFBC40BE);
  static const Color trackingPriceTitle = Color(0xFF491549);

  static const Color favsBg = Color(0xFFFFF8F2);
  static const Color favsBarColor = Color(0xFFED8E36);
  static const Color favsTitle = Color(0xFF582F0C);


}
