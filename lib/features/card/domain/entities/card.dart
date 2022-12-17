class CardGame {
  String id;
  String title;
  String description;
  String image;
  String leftText;
  String rightText;
  dynamic leftAction;
  dynamic rightAction;
  dynamic content;

  CardGame(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.leftText,
      required this.rightText,
      required this.leftAction,
      required this.rightAction,
      this.content});
}
