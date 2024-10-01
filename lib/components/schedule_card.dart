import 'package:flutter/material.dart';
import 'package:ui_clone/models/schedule.dart';

class ScheduleCard extends StatelessWidget {
  final Schedule schedule;

  const ScheduleCard({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(schedule.startAt.toString()),
              Text(schedule.endAt.toString()),
            ],
          ),
          Column(
            children: [
              Text(schedule.title),
              Row(
                children: [
                  for (var participant in schedule.participants)
                    Text(participant),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
