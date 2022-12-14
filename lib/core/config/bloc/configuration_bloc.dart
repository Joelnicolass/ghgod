import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'configuration_event.dart';
part 'configuration_state.dart';

class ConfigurationBloc extends Bloc<ConfigurationEvent, ConfigurationState> {
  ConfigurationBloc() : super(ConfigurationInitial()) {
    on<ConfigurationEvent>((event, emit) {});
  }
}
