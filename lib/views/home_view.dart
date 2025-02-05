import 'package:basketball_counter_app/widgets/custom_button_widget.dart';
import 'package:basketball_counter_app/widgets/team_column.dart';
import 'package:flutter/material.dart';
import 'package:basketball_counter_app/app_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basketball Counter',
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppStyle.kColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamColumn(teamName: 'Team A',),
              SizedBox(height: 450,
                child: VerticalDivider(
                  color: Colors.grey,
                ),
              ),
              TeamColumn(teamName: 'Team B',),
            ],
          ),
          
            CustomButtonWidget(btnTitle: 'Reset', onPressed: (){},),
        ],
      ),
    );
  }
}
