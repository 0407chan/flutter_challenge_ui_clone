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
      title: 'Meeting',
      startAt: DateTime.now(),
      endAt: DateTime.now().add(const Duration(hours: 1)),
      participants: ['John Doe', 'Jane Doe'],
    ),
    Schedule(
      title: '팀 회의',
      startAt: DateTime.now().add(const Duration(days: 1)),
      endAt: DateTime.now().add(const Duration(days: 1, hours: 2)),
      participants: ['me', '김철수', '이영희'],
    ),
    Schedule(
      title: '프로젝트 브리핑',
      startAt: DateTime.now().add(const Duration(days: 2)),
      endAt: DateTime.now().add(const Duration(days: 2, hours: 1)),
      participants: ['박지성', '손흥민', '김민재'],
    ),
    Schedule(
      title: '고객 미팅',
      startAt: DateTime.now().add(const Duration(days: 3)),
      endAt: DateTime.now().add(const Duration(days: 3, hours: 2)),
      participants: ['me', '이강인', '황희찬'],
    ),
    Schedule(
      title: '제품 출시 회의',
      startAt: DateTime.now().add(const Duration(days: 4)),
      endAt: DateTime.now().add(const Duration(days: 4, hours: 3)),
      participants: ['김연아', '박태환', '손연재'],
    ),
    Schedule(
      title: '전략 기획 세션',
      startAt: DateTime.now().add(const Duration(days: 5)),
      endAt: DateTime.now().add(const Duration(days: 5, hours: 4)),
      participants: ['me', '유재석', '강호동', '이수근'],
    ),
    Schedule(
      title: '분기별 성과 보고',
      startAt: DateTime.now().add(const Duration(days: 6)),
      endAt: DateTime.now().add(const Duration(days: 6, hours: 2)),
      participants: ['박보검', '송중기', '조인성'],
    ),
    Schedule(
      title: '신입 사원 오리엔테이션',
      startAt: DateTime.now().add(const Duration(days: 7)),
      endAt: DateTime.now().add(const Duration(days: 7, hours: 5)),
      participants: ['me', '아이유', '태연', '윤아'],
    ),
    Schedule(
      title: '마케팅 전략 회의',
      startAt: DateTime.now().add(const Duration(days: 8)),
      endAt: DateTime.now().add(const Duration(days: 8, hours: 3)),
      participants: ['방탄소년단', '블랙핑크', '트와이스'],
    ),
    Schedule(
      title: 'IT 인프라 업그레이드 논의',
      startAt: DateTime.now().add(const Duration(days: 9)),
      endAt: DateTime.now().add(const Duration(days: 9, hours: 2)),
      participants: ['me', '빌 게이츠', '스티브 잡스', '마크 저커버그'],
    ),
    Schedule(
      title: '연말 파티 계획',
      startAt: DateTime.now().add(const Duration(days: 10)),
      endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
      participants: ['전지현', '김태희', '송혜교', '공유'],
    ),
    Schedule(
      title: '연말 파티 계획',
      startAt: DateTime.now().add(const Duration(days: 10)),
      endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
      participants: ['전지현', '김태희', '송혜교', '공유'],
    ),
    Schedule(
      title: '연말 파티 계획',
      startAt: DateTime.now().add(const Duration(days: 10)),
      endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
      participants: ['전지현', '김태희', '송혜교', '공유'],
    ),
    Schedule(
      title: '연말 파티 계획',
      startAt: DateTime.now().add(const Duration(days: 10)),
      endAt: DateTime.now().add(const Duration(days: 10, hours: 4)),
      participants: ['전지현', '김태희', '송혜교', '공유'],
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
            fontWeight: FontWeight.bold,
            color: Colors.white, // 제목 텍스트 색상
          ),
          titleMedium: GoogleFonts.roboto(
            fontSize: 48,
            color: Colors.white,
          ),
          bodyLarge: GoogleFonts.roboto(
            fontSize: 16,
            color: Colors.white60, // 본문 텍스트 색상
          ),
          bodyMedium: GoogleFonts.roboto(
            fontSize: 14,
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
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: schedules.length,
                itemBuilder: (context, index) {
                  return ScheduleCard(schedule: schedules[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
