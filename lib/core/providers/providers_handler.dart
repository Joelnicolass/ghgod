import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_god/core/config/bloc/configuration_bloc.dart';
import 'package:gh_god/features/card/ui/bloc/card_game_bloc.dart';
import 'package:gh_god/features/card_handler/ui/bloc/card_handler_bloc.dart';

class ProvidersHandler {
  static getProviders() {
    return [
      // general config
      BlocProvider<ConfigurationBloc>(create: (context) => ConfigurationBloc()),
      // card handler
      BlocProvider<CardHandlerBloc>(create: (context) => CardHandlerBloc()),
      // card
      BlocProvider<CardGameBloc>(create: (context) => CardGameBloc()),
    ];
  }
}
