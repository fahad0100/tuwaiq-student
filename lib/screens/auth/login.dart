import 'package:attendance_student_app/screens/auth/verfiy_account_screen.dart';
import 'package:attendance_student_app/utils/extensions/get_screen.dart';
import 'package:attendance_student_app/utils/extensions/navigator.dart';
import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: 200, maxWidth: 200),
                      child: Image.asset(
                        'assets/logo/logo-w.png',
                        height: context.getWidth(divide: 0.65),
                        width: context.getWidth(divide: 0.65),
                      ),
                    ),
                  ),
                  Text(
                    "Email address",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.normal),
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.red),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.checkInTImeColor, width: 0.5)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.buttonColor, width: 0.5)),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            context.moveTo(view: VerifyScreen());
                          },
                          child: Text(
                            "Verify account",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
