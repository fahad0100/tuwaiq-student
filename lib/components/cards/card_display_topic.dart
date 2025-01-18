import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';

class CardDisplayTopic extends StatelessWidget {
  const CardDisplayTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      constraints: BoxConstraints(maxWidth: 400),
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
          color: AppColors.bgWidgetColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Artificial Intelligence (AI)",
            style: TextStyle(
                fontSize: 14,
                color: AppColors.textColor,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Data Analysis and Business Optimization",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Artificial Intelligence has become a crucial tool for analyzing massive amounts of data quickly and accurately. Using techniques like Machine Learning, AI can uncover patterns and make predictions from data, helping businesses make better strategic decisions. For example, it can forecast market trends, enhance customer experience, or even detect fraud early.",
            maxLines: 6,
            style: TextStyle(
                fontSize: 12,
                color: AppColors.textColor,
                fontWeight: FontWeight.normal),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Likes ",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.checkInTImeColor,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "200",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.back_hand_outlined,
                    size: 20,
                    color: AppColors.buttonColor,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
