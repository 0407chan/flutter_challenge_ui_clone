import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_clone/components/date_picker.dart';
import 'package:ui_clone/components/schedule_card.dart';
import 'package:ui_clone/models/schedule.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
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

  App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[900], // 앱의 기본 배경색
        textTheme: TextTheme(
          titleLarge: GoogleFonts.roboto(
            fontSize: 64,
            color: Colors.white, // 제목 텍스트 색상
          ),
          titleMedium: GoogleFonts.roboto(
            fontSize: 48,
            color: Colors.white,
          ),
          bodyLarge: GoogleFonts.roboto(
            fontSize: 24,
            color: Colors.white60, // 본문 텍스트 색상
          ),
          bodyMedium: GoogleFonts.roboto(
            fontSize: 16,
            color: Colors.white60, // 중간 크기 본문 텍스트 색상
          ),
          bodySmall: GoogleFonts.roboto(
            fontSize: 12,
            color: Colors.white60, // 작은 크기 본문 텍스트 색상
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900], // 앱바 배경색
          foregroundColor: Colors.white70, // 앱바 텍스트 및 아이콘 색상
        ),
        cardColor: Colors.grey[900], // 카드 위젯의 배경색
        // dividerColor: Colors.white24, // 구분선 색상
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0, // 스크롤 시 앱바 높이 변경 방지
          shadowColor: Colors.transparent, // 그림자 제거
          backgroundColor: Colors.grey[900], // 앱바 배경색 직접 지정
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.wikihow.com/images/thumb/e/e9/Draw-Pikachu-Step-14.jpg/v4-728px-Draw-Pikachu-Step-14.jpg'),
          ),
          leadingWidth: 80,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            const DatePicker(),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: schedules.length, // 스케줄 리스트의 길이
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ScheduleCard(schedule: schedules[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
