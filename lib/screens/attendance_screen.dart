import 'package:attendance_student_app/components/buttons/custom_back_button.dart';
import 'package:attendance_student_app/components/cards/card_attendance_info.dart';
import 'package:attendance_student_app/components/cards/card_user_info.dart';
import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardUserInfo(
                  name: "Fahad Turki Alazmi",
                  subTitle: "Flutter devloper",
                ),
                CustomBackButton(),
                ...List.generate(
                    att.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: CardAttendanceInfo(
                            valueFirst: att[index]["check_in_date"],
                            valueSecond: att[index]["check_out_date"],
                            valueColorSecond: AppColors.checkOutLateColor,
                          ),
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List att = [
  {
    "id": "1",
    "check_in_date": DateTime.now().toIso8601String(),
    "check_out_date": DateTime.now().add(Duration(hours: 3)).toIso8601String()
  }
];
