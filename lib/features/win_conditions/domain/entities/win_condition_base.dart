abstract class WinCondition {
  abstract String id;
  abstract String name;
  abstract String description;
  abstract int points;

  incrementPoints(
    int pointsToIncrement,
  ) {
    points += pointsToIncrement;

    if (points > 100) {
      points = 100;
    }
  }

  decrementPoints(
    int pointsToDecrement,
  ) {
    points -= pointsToDecrement;

    if (points < 0) {
      points = 0;
    }
  }

  get getPoints => points;
}
