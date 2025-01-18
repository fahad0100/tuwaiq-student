import 'package:attendance_student_app/utils/extensions/navigator.dart';
import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.back();
        },
        child: Text("<-Back",
            style: TextStyle(
                color: AppColors.buttonColor, fontWeight: FontWeight.bold)));
  }
}