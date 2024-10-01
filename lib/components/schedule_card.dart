import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_clone/models/schedule.dart';

class ScheduleCard extends StatelessWidget {
  final Schedule schedule;

  const ScheduleCard({super.key, required this.schedule});

  MaterialColor _getRandomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 32,
        bottom: 24,
        left: 24,
        right: 24,
      ),
      height: 230,
      decoration: BoxDecoration(
        color: _getRandomColor(),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            direction: Axis.vertical,
            spacing: -8,
            children: [
              Text(schedule.startAt.hour.toString(),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2,
                      )),
              Text(schedule.startAt.minute.toString().padLeft(2, '0'),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                        letterSpacing: -2,
                      )),
              Container(
                width: 1,
                height: 24,
                margin: const EdgeInsets.symmetric(vertical: 12),
                color: Colors.grey[900],
              ),
              Text(schedule.endAt.hour.toString(),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2,
                      )),
              Text(schedule.endAt.minute.toString().padLeft(2, '0'),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                        letterSpacing: -2,
                      )),
            ],
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    schedule.title.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          height: 0.9,
                        ),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 8),
                Row(children: [
                  for (var participant in schedule.participants.take(3))
                    Padding(
                      padding: const EdgeInsets.only(right: 32),
                      child: Text(
                        participant,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[800],
                            ),
                      ),
                    ),
                  if (schedule.participants.length > 3)
                    Padding(
                      padding: const EdgeInsets.only(right: 32),
                      child: Text(
                        '+${schedule.participants.length - 3}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[800],
                            ),
                      ),
                    ),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
