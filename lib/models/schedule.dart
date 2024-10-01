class Schedule {
  final String title;
  final DateTime startAt;
  final DateTime endAt;
  final List<String> participants;

  Schedule({
    required this.title,
    required this.startAt,
    required this.endAt,
    required this.participants,
  });
}
