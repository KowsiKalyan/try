import 'package:calendar_view/calendar_view.dart';
import 'package:calenderpicker/allpackages.dart';
import 'package:calenderpicker/view/month/calender_view.dart';
import 'package:intl/intl.dart';

class MothPage extends StatefulWidget {
  @override
  State<MothPage> createState() => _MothPageState();
}

class _MothPageState extends State<MothPage> {
  var selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    //CalendarControllerProvider.of(context).controller.add(event);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 150,
        leading: Center(
          child: Text(
            'Appointments',
            style: headingstyle,
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_outlined,
              color: black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.amber[900],
              child: const Text('S'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jan 2023',
                      style: toptitlestyle,
                    ),
                    Text(
                      'Total-1503',
                      style: frominputcolor,
                    ),
                  ],
                ),
                trailing: Container(
                  height: 10.0.hp,
                  width: 65.0.wp,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedindex = 0;
                          });
                        },
                        child: Container(
                          height: 5.0.hp,
                          width: 20.0.wp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green[800]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: screenbackground,
                                size: 18,
                              ),
                              Text(
                                'Month',
                                style: smalltextwhite,
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedindex = 1;
                          });
                        },
                        child: Container(
                          height: 5.0.hp,
                          width: 20.0.wp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green[800]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: screenbackground,
                                size: 18,
                              ),
                              Text(
                                'Week',
                                style: smalltextwhite,
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedindex = 2;
                          });
                        },
                        child: Container(
                          height: 5.0.hp,
                          width: 20.0.wp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green[800]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: screenbackground,
                                size: 18,
                              ),
                              Text(
                                'Day',
                                style: smalltextwhite,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              selectedindex == 0
                  ? CalendarView()
                  : selectedindex == 1
                      ? WeekviewPage()
                      : DateViewPage(),
              SizedBox(
                height: 2.0.hp,
              ),
              MonthTabs(),
              SizedBox(height: 2.0.hp),
              CategoryList()
            ],
          ),
        ),
      ),
    );
  }
}
