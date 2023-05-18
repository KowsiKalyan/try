import 'package:calendar_view/calendar_view.dart';
import 'package:calenderpicker/allpackages.dart';
import 'package:intl/intl.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0.hp,
      child: MonthView(
        borderColor: Colors.black38,
        headerStyle: const HeaderStyle(),
        borderSize: 1,
        showBorder: true,
        //controller: EventController(),
        // to provide custom UI for month cells.
        cellBuilder: (date, events, isToday, isInMonth) {
          return Container(
            child: Center(child: Text(DateFormat.d().format(date))),
          );
        },
        minMonth: DateTime(1990),
        maxMonth: DateTime(2050),
        initialMonth: DateTime(2023),
        cellAspectRatio: 1,
        onPageChange: (date, pageIndex) {
          // setState(() {
          //   print("$date, $pageIndex");
          // });
        },
        onCellTap: (events, date) {
          // Implement callback when user taps on a cell.
          // setState(() {
          //   print('event-----------${event}');
          // });
        },
        startDay: WeekDays.sunday, // To change the first day of the week.
        // This callback will only work if cellBuilder is null.
        onEventTap: (event, date) => print(event),
        onDateLongPress: (date) => print(date),
      ),
    );
  }
}
