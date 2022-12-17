import 'package:gh_god/features/win_conditions/domain/entities/win_condition_base.dart';

class PersonalState extends WinCondition {
  @override
  String id = 'personal_state';

  @override
  String name = 'Estado anímico';

  @override
  String description = 'Tu estado anímico. Se ve afectado por las decisiones';

  @override
  int points = 100;
}
