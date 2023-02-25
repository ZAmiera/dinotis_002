import 'package:flutter/cupertino.dart';

class KeyboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    // fungsi disini adalah untuk mengecek apakah ada keyboard yang sedang aktif atau tidak
    // jika ada keyboard yang aktif maka akan di hide dengan fungsi unfocus()
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
