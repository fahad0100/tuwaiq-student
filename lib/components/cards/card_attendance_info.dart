
import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';

class CardAttendanceInfo extends StatelessWidget {
  const CardAttendanceInfo(
      {super.key,
      this.titleFirst = "Check in",
      required this.valueFirst,
      this.valueColorFirst = AppColors.textColor,
      this.titleSecond = "Check Out",
      required this.valueSecond,
      this.valueColorSecond = AppColors.textColor});
  final String? titleFirst;
  final String valueFirst;
  final Color? valueColorFirst;
  final String? titleSecond;
  final String valueSecond;
  final Color? valueColorSecond;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: AppColors.bgWidgetColor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      titleFirst!,
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    valueFirst,
                    style: TextStyle(
                        color: valueColorFirst, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: 1,
            color: AppColors.textColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      titleSecond!,
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    valueSecond,
                    style: TextStyle(
                        color: valueColorSecond, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}