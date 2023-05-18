import 'package:calendar_view/calendar_view.dart';
 
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'allpackages.dart';

 

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MothPage(),
      ),
    );
  }
}
 
 
