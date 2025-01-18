import 'package:attendance_student_app/components/buttons/custom_back_button.dart';
import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';

class NFCScreen extends StatelessWidget {
  const NFCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomBackButton())),
              Expanded(
                flex: 10,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.nfc,
                        size: 100,
                        color: AppColors.textColor,
                      ),
                      Text(
                        "Make your phone close tags NFC",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
