import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${_getDayOfWeek(DateTime.now().weekday)} ${DateTime.now().day}",
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
              Text(
                'TODAY',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Text('·'),
              for (var i = 1; i <= 7; i++) Text('${DateTime.now().day + i}'),
            ],
          )
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
