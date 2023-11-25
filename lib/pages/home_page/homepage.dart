import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: const Drawer(
        child: MainDrawer(isHomeSelected: true),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsCode.primary_color,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Image.asset(
          Images.logo,
          scale: 25,
          color: Colors.white,
        ),
        leading: IconButton(
            onPressed: () {
              _drawer.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              size: 25,
            )),
        actions: <Widget>[
          IconButton(
            icon: const Stack(
              children: [
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                Positioned(
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.red,
                    size: 9,
                  ),
                )
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: Get.height * .150,
              width: Get.width,
              decoration: const BoxDecoration(
                color: ColorsCode.primary_color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 80,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Jahangir",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontFamily: "Roboto"),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20.0,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 5,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Style.widthdistan_size5,
                            const Text(
                              "(0 review)",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10, fontFamily: "Roboto"),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Style.distan_size20,
            CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    height: Get.height * .200,
                    width: Get.width * .750,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/R.jpg"), fit: BoxFit.cover),
                        color: ColorsCode.primary_color, borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  );
                },
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * .12,
                  autoPlay: true,
                  aspectRatio: 1 / 2,
                )),
            Style.distan_size20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: ColorsCode.page_background_color, //E9F2F2
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "123",
                            style: Style.dashboardBlackText700,
                          ),
                          Text(
                            'New Orders',
                            style: Style.dashboardBlackText400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Style.widthdistan_size10,
                SizedBox(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: const Color(0xff0097E6), //E9F2F2
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "123",
                              style: Style.dashboardBlackText700,
                            ),
                            Text(
                              'Underpacking Orders',
                              style: Style.dashboardBlackText400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Style.distan_size10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // ignore: unrelated_type_equality_checks
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: ColorsCode.snackbar_error_color, //E9F2F2
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "123",
                              style: Style.dashboardBlackText700,
                            ),
                            Text(
                              'Complete Orders',
                              style: Style.dashboardBlackText400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Style.widthdistan_size10,
                SizedBox(
                  // ignore: unrelated_type_equality_checks
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: ColorsCode.page_background_color, //E9F2F2
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: InkWell(
                      onTap: () {},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "123",
                            style: Style.dashboardBlackText700,
                          ),
                          Text(
                            'Branch List',
                            style: Style.dashboardBlackText400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Style.distan_size10,
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  SizedBox(
                      // ignore: unrelated_type_equality_checks
                      child: Text(
                    'Be a Donor',
                    style: Style.dashboardBlackText400,
                  )),
                  Spacer(),
                  SizedBox(
                      // ignore: unrelated_type_equality_checks
                      child: Text(
                    'See all',
                    style: Style.block_text_style,
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      // ignore: unrelated_type_equality_checks
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          color: ColorsCode.page_background_color, //E9F2F2
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/blooddonation.png',
                          ),
                          const Text(
                            'Bload donation',
                          ),
                        ],
                      ),
                    ),
                  )),
                  Style.widthdistan_size10,
                  SizedBox(
                      // ignore: unrelated_type_equality_checks
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          color: ColorsCode.page_background_color, //E9F2F2
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/donation.png'),
                          const Text(
                            'Donation',
                            style: Style.dashboardBlackText400,
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
