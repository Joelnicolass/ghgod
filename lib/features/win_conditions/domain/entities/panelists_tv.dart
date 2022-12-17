import 'package:gh_god/features/win_conditions/domain/entities/win_condition_base.dart';

class PanelistsTv extends WinCondition {
  @override
  String id = 'panelists_tv';

  @override
  String name = 'Panelistas de TV';

  @override
  String description =
      'Panelistas de los programas de TV que analizan el juego';

  @override
  int points = 100;
}
