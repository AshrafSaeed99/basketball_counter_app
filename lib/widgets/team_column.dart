import 'package:basketball_counter_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class TeamColumn extends StatelessWidget {
  const TeamColumn({super.key, required this.teamName});
final String teamName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(teamName, style: TextStyle(color: Colors.black, fontSize: 34, fontWeight: FontWeight.w500),),
        Text('0', style: TextStyle(color: Colors.black, fontSize: 160),),

        for (int i = 1; i < 4; i++)        
        CustomButtonWidget(
          btnTitle:i>1? 'Add $i Points':'Add $i Point',
          onPressed: (){},),
      ],
    );
  }
}