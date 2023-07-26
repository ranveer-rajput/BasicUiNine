import 'package:flutter/material.dart';
import 'package:flutter_application_9/page_one.wiget.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 8, 24, 108),
              Color.fromARGB(255, 9, 24, 92),
            ], // Define your desired gradient colors
            begin: Alignment.topRight, // Starting point of the gradient
            end: Alignment.bottomCenter, // Ending point of the gradient
            // You can also add 'stops' to control the color transition positions.
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white24),
                    ),
                    child: const Icon(
                      Icons.copy_rounded,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue.shade200),
                    child: const Icon(
                      Icons.person,
                      size: 18,
                      color: Color.fromARGB(255, 191, 104, 104),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              const Text(
                "Hi Geroge ,you have",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w200),
              ),
              const Text(
                "Rs 12,463.45",
                style: TextStyle(fontSize: 35, color: Colors.white70),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NewWidget(text: "Send", icon: Icons.arrow_upward_outlined),
                  NewWidget(
                      text: "Receive", icon: Icons.arrow_downward_outlined),
                  NewWidget(text: "More", icon: Icons.more_horiz)
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              const Row(
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              NewWidgetTwo(
                  color: Colors.blue.shade100,
                  text1: "iCloud subscription",
                  text2: "Today",
                  text3: "Rs 99",
                  icon: Icons.apple),
              const SizedBox(
                height: 25,
              ),
              NewWidgetTwo(
                  color: Colors.pink.shade100,
                  text1: "Sarah Bell",
                  text2: "Yesterday",
                  text3: "Rs 500",
                  icon: Icons.person_2),
              const SizedBox(
                height: 25,
              ),
              NewWidgetTwo(
                  color: Colors.redAccent.shade100,
                  text1: "Nike",
                  text2: "june 12",
                  text3: "2000",
                  icon: Icons.arrow_outward_outlined),
              const SizedBox(
                height: 25,
              ),
              NewWidgetTwo(
                  color: Colors.redAccent.shade100,
                  text1: "Nike",
                  text2: "june 12",
                  text3: "2000",
                  icon: Icons.arrow_outward_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
