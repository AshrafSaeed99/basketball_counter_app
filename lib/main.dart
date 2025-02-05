import 'package:basketball_counter_app/cubits/counter_cubit/counter_cubit.dart';
import 'package:basketball_counter_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {  runApp(const BasketballCounter());}
class BasketballCounter extends StatelessWidget {
  const BasketballCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
