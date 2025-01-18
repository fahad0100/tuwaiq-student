import 'package:flutter/material.dart';

extension GetScreenSize on BuildContext {
  getWidth({double divide = 0}) {
    assert(!(divide > 1),
        "\nMessage Error:\nDivide number should be less or equle then 1");
    return MediaQuery.of(this).size.width * divide;
  }

  getHeight({double divide = 0}) {
    assert(!(divide > 1),
        "\nMessage Error:\nDivide number should be less or equle then 1");
    return MediaQuery.of(this).size.height * divide;
  }
}
