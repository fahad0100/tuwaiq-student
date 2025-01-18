import 'package:flutter/material.dart';

extension Nav on BuildContext {
  moveTo({required Widget view}) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => view));
  }

  moveToEndRemove({required Widget view}) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => view),
      (route) => false,
    );
  }

  back() {
    if (Navigator.canPop(this)) {
      return Navigator.pop(this);
    } else {
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text("Can't Pop"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
