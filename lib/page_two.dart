import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 18, 32, 101),
              Color.fromARGB(255, 161, 22, 180),
            ], // Define your desired gradient colors
            begin: Alignment.topCenter, // Starting point of the gradient
            end: Alignment.bottomCenter, // Ending point of the gradient
            // You can also add 'stops' to control the color transition positions.
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white24),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              const Text(
                "How much?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Rs.1,250.00",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.86,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 169, 93, 204),
                      Color.fromARGB(255, 24, 16, 96),
                    ], // Define your desired gradient colors
                    begin:
                        Alignment.topCenter, // Starting point of the gradient
                    end: Alignment.bottomCenter, // Ending point of the gradient
                    // You can also add 'stops' to control the color transition positions.
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              const Text(
                "You have Rs.12,456.00 in your balance\n to cover our running cost we charge Rs.200 fee ",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                      size: 19,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.46,
                  ),
                  Container(
                    width: 105,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 141, 192, 143)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 26, right: 20),
                child: Column(
                  children: [
                    NewRow(
                      text1: '1',
                      text2: '2',
                      text3: '3',
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    NewRow(text1: "4", text2: "5", text3: "6"),
                    SizedBox(
                      height: 35,
                    ),
                    NewRow(
                      text1: '7',
                      text2: '8',
                      text3: '9',
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    NewRow(
                      text1: '.',
                      text2: '0',
                      text3: '×',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const NewRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 23, color: Colors.white),
        ),
        Text(
          text2,
          style: const TextStyle(fontSize: 23, color: Colors.white),
        ),
        Text(
          text3,
          style: const TextStyle(fontSize: 23, color: Colors.white),
        ),
      ],
    );
  }
}
