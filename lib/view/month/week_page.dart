import 'package:calendar_view/calendar_view.dart';

import '../../allpackages.dart';
import 'package:intl/intl.dart';

class WeekviewPage extends StatefulWidget {
  const WeekviewPage({super.key});

  @override
  State<WeekviewPage> createState() => _WeekviewPageState();
}

class _WeekviewPageState extends State<WeekviewPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 49.0.hp,
        width: 100.0.wp,
        child: WeekView(
          controller: EventController(),
          eventTileBuilder: (date, events, boundry, start, end) {
            // Return your widget to display as event tile.
            return Container();
          },
          fullDayEventBuilder: (events, date) {
            // Return your widget to display full day event view.
            return Container(
              child: Center(child: Text(DateFormat.d().format(date))),
            );
          },
          showLiveTimeLineInAllDays:
              true, // To display live time line in all pages in week view.
          width: 92.0.wp, // width of week view.
          minDay: DateTime(1990),
          maxDay: DateTime(2050),
          initialDay: DateTime(2023),
          heightPerMinute: 1, // height occupied by 1 minute time span.
          eventArranger:
              SideEventArranger(), // To define how simultaneous events will be arranged.
          onEventTap: (events, date) => print(events),
          onDateLongPress: (date) => print(date),
          startDay: WeekDays.sunday, // To change the first day of the week.
        ),
      ),
    );
  }
}
