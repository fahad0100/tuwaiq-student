import 'package:attendance_student_app/components/buttons/custom_back_button.dart';
import 'package:attendance_student_app/screens/home_screen.dart';
import 'package:attendance_student_app/utils/extensions/get_screen.dart';
import 'package:attendance_student_app/utils/extensions/navigator.dart';
import 'package:attendance_student_app/utils/style/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:pinput/pinput.dart';

OtpTimerButtonController controller = OtpTimerButtonController();

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CustomBackButton()),
                      Text(
                        "OTP Verification",
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "We'll send a one-time password to",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "example@gmail.com",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Pinput(
                    length: 6,
                    defaultPinTheme: PinTheme(
                      width: 40,
                      height: 40,
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: AppColors.checkInTImeColor,
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: AppColors.checkInTImeColor,
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.buttonColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onCompleted: (pin) {
                      context.moveTo(view: HomeScreen());
                    },
                  ),
                ),
                Center(
                  child: OtpTimerButton(
                    controller: controller,
                    onPressed: () {
                      controller.startTimer();
                    },
                    backgroundColor: AppColors.buttonColor,
                    text: Text(
                      'Resend new OTP',
                      selectionColor: Colors.red,
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    duration: 60,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
