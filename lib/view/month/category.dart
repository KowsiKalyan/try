import 'package:calenderpicker/allpackages.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0.hp,
      width: 100.0.wp,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListTile(
                    // contentPadding:
                    //     const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg')),
                    title: Text(
                      'Tooth Filling',
                      style: toptitlestyle,
                    ),
                    //horizontalTitleGap: 10,
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 4.0.hp,
                          width: 22.0.wp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                50,
                              ),
                              border: Border.all(color: Colors.blue)),
                          child: Center(
                            child: Text(
                              'Clinic Visit',
                              style: text,
                            ),
                          ),
                        ),
                        Container(
                            height: 2.0.hp,
                            width: 2.0.wp,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blue,
                                    Colors.white,
                                  ],
                                ))),
                        const Text('9.00 Pm|1st sitting')
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 3.0.hp,
                            width: 3.0.wp,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.green,
                                    Colors.white,
                                  ],
                                ))),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg')),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
