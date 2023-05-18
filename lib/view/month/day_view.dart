 import 'package:calendar_view/calendar_view.dart';
import 'package:calenderpicker/allpackages.dart';
 
import 'package:intl/intl.dart';
class DateViewPage extends StatefulWidget {
  const DateViewPage({super.key});

  @override
  State<DateViewPage> createState() => _DateViewPageState();
}

class _DateViewPageState extends State<DateViewPage> {
  @override
  Widget build(BuildContext context) {
    return  
       Container(
        height: 52.0.hp,
         child: DayView(
          controller: EventController(),
          eventTileBuilder: (date, events, boundry, start, end) {
            // Return your widget to display as event tile.
            return Container();
          },
          fullDayEventBuilder: (events, date) {
            // Return your widget to display full day event view.
            return Container(
              child: Center(
                child: Text(DateFormat.d().format(date)),
              ),
            );
          },
          showVerticalLine: true, // To display live time line in day view.
          showLiveTimeLineInAllDays:
              true, // To display live time line in all pages in day view.
          minDay: DateTime(1990),
          maxDay: DateTime(2050),
          initialDay: DateTime(2023),
          heightPerMinute: 1, // height occupied by 1 minute time span.
          eventArranger:
              SideEventArranger(), // To define how simultaneous events will be arranged.
          onEventTap: (events, date) => print(events),
          onDateLongPress: (date) => print(date),
           
           ),
       );
  }
}

