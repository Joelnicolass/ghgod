part of 'configuration_bloc.dart';

abstract class ConfigurationEvent extends Equatable {
  const ConfigurationEvent();

  ConfigurationEvent copyWith();

  @override
  List<Object> get props => [];
}
