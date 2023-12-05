import 'package:app_development/pages/detail_page/detail_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF636363),
      appBar: AppBar(
        surfaceTintColor: const Color(0xFF636363),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF636363),
        title: const Text(
          "PRODUCT",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/icons/search.svg"),
          const SizedBox(
            width: 12,
          ),
          const Icon(
            Icons.more_vert,
            size: 34,
            color: Colors.white,
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BEST SELL",
                  style: GoogleFonts.inter(
                    color: const Color(0xFFFF9E58),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "NEW",
                  style: GoogleFonts.inter(
                    color: const Color(0xFFFF9E58),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "COMING SOON",
                  style: GoogleFonts.inter(
                    color: const Color(0xFFFF9E58),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Stack(
            children: [
              Divider(
                // height: 2,
                thickness: 2,
                endIndent: 37,
                indent: 37,
              ),
              Align(
                alignment: Alignment(-0.45, 0),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFFFF9E58),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 192,
                padding: const EdgeInsets.all(24),
                // width: 320,

                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9E58),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 126,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Hot 🔥",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox.shrink(),
                              Text(
                                "Jordan 1",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Reverse Mocha",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-1, 2),
                child: Image.asset(
                  "assets/images/shoes_two.png",
                  width: 256,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const DetailPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 250,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC7C7C7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const SizedBox.shrink(),
                                  Image.asset(
                                    "assets/images/shoes_three.png",
                                    width: 240,
                                  ),
                                  const Text(
                                    "Travis Scott x Air Jordan\n1 Low ‘Black Phantom",
                                    style: TextStyle(
                                      color: Color(0xFF030303),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const Alignment(-1, -0.8),
                              child: InkWell(
                                onTap: () {
                                  debugPrint("TAP TAPA TAPA");
                                },
                                child: const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Color(0xFFFF9E58),
                                  child: Icon(
                                    CupertinoIcons.suit_heart,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const DetailPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    // padding:
                    // const EdgeInsets.symmetric(horizontal: 36, vertical: 25),
                    height: 250,
                    decoration: BoxDecoration(
                      color: const Color(0xFF211E1E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  // SizedBox.shrink(),
                                  Image.asset(
                                    "assets/images/shoes_four.png",
                                    width: 240,
                                  ),
                                  const Text(
                                    "Union x Nike Dunk\nLow ‘Argon ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const Alignment(-1, -0.8),
                              child: InkWell(
                                onTap: () {
                                  debugPrint("TAP TAPA TAPA");
                                },
                                child: const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Color(0xFFFF9E58),
                                  child: Icon(
                                    CupertinoIcons.suit_heart,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: const Color(0xFFFF9E58),
      //   tooltip: 'Increment',
      //   onPressed: () {},
      //   shape: const CircleBorder(),
      //   label: SvgPicture.asset(
      //     "assets/icons/house.svg",
      //     width: 30,
      //   ),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   color: const Color(0xFFFF9E58),
      //   shape: const CircularNotchedRectangle(),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(
      //         tooltip: "SEARCH",
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.search,
      //           size: 30,
      //           color: Colors.black,
      //         ),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.shopping_bag_outlined,
      //           size: 30,
      //           color: Colors.black,
      //         ),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           CupertinoIcons.heart,
      //           size: 30,
      //           color: Colors.black,
      //         ),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           CupertinoIcons.person,
      //           size: 30,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xFFFF9E58),
        backgroundColor: const Color(0xFF636363),
        // height: 80.0,
        items: [
          const Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          const Icon(
            Icons.shopping_bag_outlined,
            size: 30,
            color: Colors.black,
          ),
          SvgPicture.asset(
            "assets/icons/house.svg",
            width: 30,
          ),
          const Icon(
            CupertinoIcons.heart,
            size: 30,
            color: Colors.black,
          ),
          const Icon(
            Icons.person_2_outlined,
            size: 30,
            // color: Colors.black,
          ),
        ],
      ),
    );
  }
}
