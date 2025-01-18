import 'package:attendance_student_app/components/cards/card_attendance_info.dart';
import 'package:attendance_student_app/components/cards/card_display_topic.dart';
import 'package:attendance_student_app/components/cards/card_user_info.dart';
import 'package:attendance_student_app/screens/attendance_screen.dart';
import 'package:attendance_student_app/screens/nfc_screen.dart';
import 'package:attendance_student_app/utils/extensions/navigator.dart';
import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                SizedBox(
                  height: 16,
                ),
                CardAttendanceInfo(
                  titleFirst: 'Days',
                  valueFirst: "11",
                  titleSecond: 'Hours',
                  valueSecond: "33",
                  valueColorSecond: AppColors.checkOutLateColor,
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 223,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CardDisplayTopic(),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today Attendance",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sept 21 2025",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                CardAttendanceInfo(
                  valueFirst: "011:38 AM",
                  valueColorFirst: AppColors.checkInTImeColor,
                  valueSecond: "06:38 PM",
                  valueColorSecond: AppColors.checkInTImeColor,
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 139,
                    child: InkWell(
                      onTap: () {
                        context.moveTo(view: AttendanceScreen());
                      },
                      child: Row(
                        children: [
                          Text(
                            "Attendances List",
                            style: TextStyle(
                              color: AppColors.buttonColor,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            color: AppColors.buttonColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SwipeButton(
                  trackPadding: EdgeInsets.all(6),
                  height: 65,
                  elevationThumb: 1,
                  activeThumbColor: AppColors.buttonColor,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.red,
                  activeTrackColor: AppColors.bgWidgetColor,
                  borderRadius: BorderRadius.circular(10),
                  onSwipe: () {
                    context.moveTo(view: NFCScreen());
                  },
                  child: Text(
                    "Swipe to Attendees",
                    style: TextStyle(
                      color: AppColors.textColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
