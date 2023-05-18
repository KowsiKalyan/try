import 'package:calendar_view/calendar_view.dart';
import 'package:calenderpicker/allpackages.dart';

class MonthTabs extends StatefulWidget {
  const MonthTabs({super.key});

  @override
  State<MonthTabs> createState() => _MonthTabsState();
}

class _MonthTabsState extends State<MonthTabs>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  DateTime now = DateTime.now();
  var status = ['Upcoming', 'Requested', 'Completed', 'Cancelled'];
  var event = CalendarEventData(
    date: DateTime(2021, 8, 10),
    endDate: DateTime(2021, 8, 15),
    event: "Event 1",
    title: 'q',
  );
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.0.hp,
      width: 100.0.wp,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: text,
              ),
              Container(
                height: 5.0.hp,
                width: 55.0.wp,
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pinkAccent[100],
                  ),
                  controller: controller,
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: smalltext,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Online',
                        style: smalltext,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Offline',
                        style: smalltext,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                Center(
                    child: Container(
                  height: 12.0.hp,
                  width: 100.0.wp,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 3.0.hp,
                              width: 23.0.wp,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: index == 0
                                      ? const LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Colors.blue,
                                            Colors.white,
                                          ],
                                        )
                                      : index == 1
                                          ? const LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                Colors.yellow,
                                                Colors.white,
                                              ],
                                            )
                                          : index == 2
                                              ? const LinearGradient(
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Colors.green,
                                                    Colors.white,
                                                  ],
                                                )
                                              : const LinearGradient(
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Colors.pink,
                                                    Colors.white,
                                                  ],
                                                )),
                            ),
                            Text('108', style: text),
                            Text(
                              status[index],
                              style: counttext,
                            ),
                          ],
                        );
                      }),
                )),
                const Center(child: Text('Tab 2 Content')),
                const Center(child: Text('Tab 3 Content')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
