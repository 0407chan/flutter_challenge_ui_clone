import 'package:ui_clone/models/schedule.dart';

final List<Schedule> schedules = [
  // 오늘
  Schedule(
    title: 'TEAM MEETING',
    startAt: DateTime.now(),
    endAt: DateTime.now().add(const Duration(hours: 2)),
    participants: ['JOHN', 'EMMA', 'ME'],
  ),
  Schedule(
    title: 'PROJECT PLANNING MEETING',
    startAt: DateTime.now(),
    endAt: DateTime.now().add(const Duration(hours: 2)),
    participants: [
      'KIM',
      'LEE',
      'PARK',
    ],
  ),
  Schedule(
    title: 'CUSTOMER FEEDBACK REVIEW',
    startAt: DateTime.now(),
    endAt: DateTime.now().add(const Duration(hours: 2)),
    participants: ['HONG', 'LIM', 'CHOI', 'KANG', 'ME'],
  ),

  // 1일 후
  Schedule(
    title: 'PROJECT KICKOFF',
    startAt: DateTime.now().add(const Duration(days: 1)),
    endAt: DateTime.now().add(const Duration(days: 1, hours: 1)),
    participants: ['OLIVIA', 'JAMES', 'AVA', 'ALEXANDER', 'WILLIAM', 'EMILY'],
  ),
  Schedule(
    title: 'CLIENT CALL',
    startAt: DateTime.now().add(const Duration(days: 1, hours: 3)),
    endAt: DateTime.now().add(const Duration(days: 1, hours: 4)),
    participants: ['SOPHIA', 'DANIEL', 'ME'],
  ),

  // 2일 후
  Schedule(
    title: 'BUDGET REVIEW',
    startAt: DateTime.now().add(const Duration(days: 2)),
    endAt: DateTime.now().add(const Duration(days: 2, hours: 2)),
    participants: ['CHARLOTTE', 'BENJAMIN', 'AMELIA', 'HENRY', 'ME'],
  ),

  // 3일 후
  Schedule(
    title: 'PRODUCT DEMO',
    startAt: DateTime.now().add(const Duration(days: 3)),
    endAt: DateTime.now().add(const Duration(days: 3, hours: 1)),
    participants: ['ELIZABETH', 'SAMUEL', 'SOPHIA', 'WILLIAM', 'OLIVER'],
  ),
  Schedule(
    title: 'TEAM BUILDING',
    startAt: DateTime.now().add(const Duration(days: 3, hours: 3)),
    endAt: DateTime.now().add(const Duration(days: 3, hours: 6)),
    participants: [
      'JOSEPH',
      'EVELYN',
      'DAVID',
      'ABIGAIL',
      'CHRISTOPHER',
      'EMMA',
      'MICHAEL',
      'ME'
    ],
  ),

  // 4일 후
  Schedule(
    title: 'STRATEGY SESSION',
    startAt: DateTime.now().add(const Duration(days: 4)),
    endAt: DateTime.now().add(const Duration(days: 4, hours: 3)),
    participants: ['GRACE', 'ANDREW', 'VICTORIA', 'DANIEL', 'SOFIA', 'MATTHEW'],
  ),

  // 5일 후
  Schedule(
    title: 'PERFORMANCE REVIEWS',
    startAt: DateTime.now().add(const Duration(days: 5)),
    endAt: DateTime.now().add(const Duration(days: 5, hours: 4)),
    participants: ['RYAN', 'ZOEY', 'NATHAN', 'LILY', 'ME'],
  ),
  Schedule(
    title: 'TRAINING WORKSHOP',
    startAt: DateTime.now().add(const Duration(days: 5, hours: 5)),
    endAt: DateTime.now().add(const Duration(days: 5, hours: 8)),
    participants: [
      'ETHAN',
      'MIA',
      'JACKSON',
      'HANNAH',
      'CHRISTOPHER',
      'ADDISON',
      'OLIVIA'
    ],
  ),

  // 6일 후
  Schedule(
    title: 'MARKETING BRAINSTORM',
    startAt: DateTime.now().add(const Duration(days: 6)),
    endAt: DateTime.now().add(const Duration(days: 6, hours: 2)),
    participants: ['SCARLETT', 'AIDEN', 'ELLA', 'LUCAS', 'ARIA', 'JAMES', 'ME'],
  ),

  // 7일 후
  Schedule(
    title: 'IT INFRASTRUCTURE REVIEW',
    startAt: DateTime.now().add(const Duration(days: 7)),
    endAt: DateTime.now().add(const Duration(days: 7, hours: 3)),
    participants: [
      'LIAM',
      'AVERY',
      'ELIJAH',
      'MADISON',
      'GABRIEL',
      'AUBREY',
      'OWEN'
    ],
  ),
  Schedule(
    title: 'QUARTERLY PLANNING',
    startAt: DateTime.now().add(const Duration(days: 7, hours: 4)),
    endAt: DateTime.now().add(const Duration(days: 7, hours: 7)),
    participants: [
      'NOAH',
      'PENELOPE',
      'GRAYSON',
      'LAYLA',
      'WILLIAM',
      'SOPHIA',
      'MICHAEL',
      'EMMA',
      'ME'
    ],
  ),
];
