import 'package:ui_clone/models/schedule.dart';

final List<Schedule> schedules = [
  Schedule(
    title: 'QUARTERLY REVIEW',
    startAt: DateTime.now(),
    endAt: DateTime.now().add(const Duration(hours: 1)),
    participants: ['JOHN', 'EMMA', 'MICHAEL', 'SOPHIA', 'WILLIAM', 'ME'],
  ),
  Schedule(
    title: 'PRODUCT LAUNCH',
    startAt: DateTime.now().add(const Duration(days: 1)),
    endAt: DateTime.now().add(const Duration(days: 1, hours: 2)),
    participants: ['OLIVIA', 'JAMES', 'AVA', 'ALEXANDER', 'ME'],
  ),
  Schedule(
    title: 'BUDGET PLANNING',
    startAt: DateTime.now().add(const Duration(days: 2)),
    endAt: DateTime.now().add(const Duration(days: 2, hours: 1)),
    participants: [
      'CHARLOTTE',
      'BENJAMIN',
      'AMELIA',
      'DANIEL',
      'EMILY',
      'HENRY'
    ],
  ),
  Schedule(
    title: 'CLIENT PRESENTATION',
    startAt: DateTime.now().add(const Duration(days: 3)),
    endAt: DateTime.now().add(const Duration(days: 3, hours: 2)),
    participants: ['ELIZABETH', 'SAMUEL', 'SOPHIA', 'ME'],
  ),
  Schedule(
    title: 'TEAM BUILDING',
    startAt: DateTime.now().add(const Duration(days: 4)),
    endAt: DateTime.now().add(const Duration(days: 4, hours: 3)),
    participants: ['JOSEPH', 'EVELYN', 'DAVID', 'ABIGAIL', 'CHRISTOPHER'],
  ),
  Schedule(
    title: 'STRATEGIC PLANNING',
    startAt: DateTime.now().add(const Duration(days: 5)),
    endAt: DateTime.now().add(const Duration(days: 5, hours: 4)),
    participants: [
      'GRACE',
      'ANDREW',
      'VICTORIA',
      'DANIEL',
      'SOFIA',
      'MATTHEW',
      'CHLOE',
      'ME'
    ],
  ),
  Schedule(
    title: 'PERFORMANCE REVIEW',
    startAt: DateTime.now().add(const Duration(days: 6)),
    endAt: DateTime.now().add(const Duration(days: 6, hours: 2)),
    participants: ['RYAN', 'ZOEY', 'NATHAN', 'LILY'],
  ),
  Schedule(
    title: 'NEW HIRE ORIENTATION',
    startAt: DateTime.now().add(const Duration(days: 7)),
    endAt: DateTime.now().add(const Duration(days: 7, hours: 5)),
    participants: [
      'ETHAN',
      'MIA',
      'JACKSON',
      'HANNAH',
      'CHRISTOPHER',
      'ADDISON',
      'ME'
    ],
  ),
  Schedule(
    title: 'MARKETING STRATEGY',
    startAt: DateTime.now().add(const Duration(days: 8)),
    endAt: DateTime.now().add(const Duration(days: 8, hours: 3)),
    participants: ['SCARLETT', 'AIDEN', 'ELLA', 'LUCAS', 'ARIA'],
  ),
  Schedule(
    title: 'IT INFRASTRUCTURE',
    startAt: DateTime.now().add(const Duration(days: 9)),
    endAt: DateTime.now().add(const Duration(days: 9, hours: 2)),
    participants: [
      'LIAM',
      'AVERY',
      'ELIJAH',
      'MADISON',
      'GABRIEL',
      'AUBREY',
      'OWEN',
      'ME'
    ],
  ),
  Schedule(
    title: 'ANNUAL GALA',
    startAt: DateTime.now().add(const Duration(days: 10)),
    endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
    participants: ['ISABELLA', 'CARTER', 'HARPER', 'WYATT', 'EVELYN'],
  ),
  Schedule(
    title: 'BOARD MEETING',
    startAt: DateTime.now().add(const Duration(days: 10)),
    endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
    participants: ['NOAH', 'PENELOPE', 'GRAYSON', 'LAYLA', 'ME'],
  ),
  Schedule(
    title: 'SALES CONFERENCE',
    startAt: DateTime.now().add(const Duration(days: 10)),
    endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
    participants: ['OLIVER', 'RILEY', 'ELLIE', 'JULIAN', 'AUBREY', 'CALEB'],
  ),
  Schedule(
    title: 'COMPANY RETREAT',
    startAt: DateTime.now().add(const Duration(days: 10)),
    endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
    participants: [
      'EMMA',
      'JACK',
      'HAZEL',
      'LUKE',
      'NORA',
      'ISAAC',
      'ZOE',
      'LEVI',
      'ME'
    ],
  ),
];
