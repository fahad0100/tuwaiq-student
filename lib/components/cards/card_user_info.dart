import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';

class CardUserInfo extends StatelessWidget {
  const CardUserInfo({super.key, required this.name, required this.subTitle});
  final String name;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(subTitle,
                      style: TextStyle(
                          color: AppColors.textColor.withAlpha(150),
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.textColor, width: 0.5),
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active,
                      size: 20,
                      color: AppColors.textColor,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
