import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_god/common/utils/screen.dart';
import 'package:gh_god/core/config/bloc/configuration_bloc.dart';
import 'package:gh_god/features/card_handler/ui/card_handler.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ConfigurationBloc>(create: (context) => ConfigurationBloc())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtils.fullScreen();

    return MaterialApp(
      title: 'GH ArgenGod',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: Center(child: CardHandler())),
    );
  }
}
