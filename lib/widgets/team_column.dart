import 'package:basketball_counter_app/cubits/counter_cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubits/counter_cubit/counter_state.dart';
import 'package:basketball_counter_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamColumn extends StatelessWidget {
  const TeamColumn({super.key, required this.teamName});
  final String teamName;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Text(
              'Team $teamName',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              teamName == 'A'
                  ? BlocProvider.of<CounterCubit>(context).teamAScore.toString()
                  : BlocProvider.of<CounterCubit>(context)
                      .teamBScore
                      .toString(),
          //     teamName == 'A'? '${BlocProvider.of<CounterCubit>(context).teamAScore}':
          //  '${BlocProvider.of<CounterCubit>(context).teamBScore}',
              style: TextStyle(color: Colors.black, fontSize: 160),
            ),
            for (int i = 1; i < 4; i++)
              CustomButtonWidget(
                btnTitle: i > 1 ? 'Add $i Points' : 'Add $i Point',
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                      .incrementCounter(team: teamName, btnIndex: i);
                },
              ),
          ],
        );
      },
    );
  }
}
