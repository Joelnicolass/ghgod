import 'package:gh_god/features/win_conditions/domain/entities/win_condition_base.dart';

class Viewers extends WinCondition {
  @override
  String id = 'viewers';

  @override
  String name = 'Espectadores';

  @override
  String description = 'Espectadores de la transmisión del juego';

  @override
  int points = 100;
}
