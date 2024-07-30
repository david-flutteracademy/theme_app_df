import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_app_df/bloc/theme_bloc.dart';
import 'package:theme_app_df/cubit/theme_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int randInt = Random().nextInt(10);
            print(randInt);
            // context.read<ThemeBloc>().add(ChangeThemeEvent(randInt: randInt));
            context.read<ThemeCubit>().changeTheme(randInt);
          },
          child: Text(
            'Change Theme',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
