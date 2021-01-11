import 'package:flutter/foundation.dart';

class ThemeController {
  static final ThemeController instancia = ThemeController._();
  ThemeController._();

  ValueNotifier<bool> isDark = ValueNotifier<bool>(false);

  void changeTheme(bool value) {
    isDark.value = value;
    print('Enter');
  }
}
