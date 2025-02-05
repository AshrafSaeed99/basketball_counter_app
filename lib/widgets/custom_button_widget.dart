import 'package:basketball_counter_app/app_style.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, this.onPressed, required this.btnTitle});

  final void Function()? onPressed;
  final String btnTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0)  ,
            fixedSize: const Size(155, 60),
            backgroundColor: AppStyle.kColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Text(
            btnTitle,
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
