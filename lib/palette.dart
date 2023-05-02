import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xff002654, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff002654),//10%
      100: const Color(0xff002654),//20%
      200: const Color(0xff002654),//30%
      300: const Color(0xff002654),//40%
      400: const Color(0xff002654),//50%
      500: const Color(0xff002654),//60%
      600: const Color(0xff002654),//70%
      700: const Color(0xff002654),//80%
      800: const Color(0xff002654),//90%
      900: const Color(0xff002654),//100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
