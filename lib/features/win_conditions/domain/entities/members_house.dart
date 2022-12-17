import 'package:gh_god/features/win_conditions/domain/entities/win_condition_base.dart';

class MemberHouse extends WinCondition {
  @override
  String id = 'member_house';

  @override
  String name = 'Miembros de la casa';

  @override
  String description = 'Relación con los otros miembros de la casa';

  @override
  int points = 100;
}
