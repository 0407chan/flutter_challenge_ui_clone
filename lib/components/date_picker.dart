import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${_getDayOfWeek(DateTime.now().weekday)} ${DateTime.now().day}",
            textAlign: TextAlign.start,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Text(
                'TODAY',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                '·',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.pink[400],
                    ),
              ),
              Row(
                children: [
                  for (var date = DateTime.now();
                      date.month == DateTime.now().month;
                      date = date.add(const Duration(days: 1)))
                    Text(
                      '${date.day} ',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

_getDayOfWeek(int weekday) {
  switch (weekday) {
    case 1:
      return 'MONDAY';
    case 2:
      return 'TUESDAY';
    case 3:
      return 'WEDNESDAY';
    case 4:
      return 'THURSDAY';
    case 5:
      return 'FRIDAY';
    case 6:
      return 'SATURDAY';
    case 7:
      return 'SUNDAY';
    default:
      return '';
  }
}
