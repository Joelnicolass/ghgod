import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_god/common/utils/screen.dart';
import 'package:gh_god/core/providers/providers_handler.dart';
import 'package:gh_god/features/card/ui/bloc/card_game_bloc.dart';
import 'package:gh_god/features/card_swiper/ui/card_swiper.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: ProvidersHandler.getProviders(), child: const MyApp()));
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
      home: DebuggingWidget(),
    );
  }
}

class DebuggingWidget extends StatelessWidget {
  const DebuggingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<CardGameBloc, CardGameState>(
      builder: (_, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Eleccion: '),
                  Text(state.selectionCard.name),
                ],
              ),
              CardSwiper(),
            ],
          ),
        );
      },
    ));
  }
}
