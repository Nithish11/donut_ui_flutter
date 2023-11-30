import 'package:donut_ui/tabs/burger_tab.dart';
import 'package:donut_ui/tabs/donut_tab.dart';
import 'package:donut_ui/tabs/pancake_tab.dart';
import 'package:donut_ui/tabs/pizza_tab.dart';
import 'package:donut_ui/tabs/smoothie.dart';
import 'package:donut_ui/util/my_tab.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  //my tabs
  List<Widget> myTabs = const [
    //donut tab
    Mytab(iconPath: "lib/assets/icons/donut.png"),

    // burger tab
    Mytab(iconPath: "lib/assets/icons/burger.png"),

    // pancake tab
    Mytab(iconPath: "lib/assets/icons/pancakes.png"),

    // pizza tab
    Mytab(iconPath: "lib/assets/icons/pizza.png"),

    // smoothie tab
    Mytab(iconPath: "lib/assets/icons/smoothie.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: const Icon(
                  Icons.person,
                  size: 36,
                ),
                onPressed: () {
                  //account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to eat ",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
                child: TabBarView(
              children: [
                //donut page
                donutTab(),
                //burger page

                burgerTab(),
                // pancake page
                pancakeTab(),

                // pizza page
                pizzaTab(),

                //smoothie page
                smoothieTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
