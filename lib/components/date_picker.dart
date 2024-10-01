import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  final DateTime currentDate;
  final Function(DateTime) updateCurrentDate;

  const DatePicker(
      {super.key, required this.currentDate, required this.updateCurrentDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
        bottom: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${_getDayOfWeek(DateTime.now().weekday)} ${DateTime.now().day}",
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              GestureDetector(
                onTap: () => updateCurrentDate(DateTime.now()),
                child: Text(
                  'TODAY',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: currentDate.day == DateTime.now().day
                            ? Colors.white
                            : Colors.grey[500],
                      ),
                ),
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
                    GestureDetector(
                      onTap: () => updateCurrentDate(date),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          '${date.day}',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: date.day == currentDate.day
                                        ? Colors.white
                                        : Colors.grey[500],
                                    fontWeight: date.day == currentDate.day
                                        ? FontWeight.bold
                                        : FontWeight.w300,
                                  ),
                        ),
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
