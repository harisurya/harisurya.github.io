import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:udahari/shared/shared.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Stack(
        children: [
          SizedBox(
              height: 100,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageIndex = 0;
                              });
                            },
                            child: SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Home",
                                      style: blackTextFont.copyWith(
                                          color: pageIndex == 0
                                              ? mainColor
                                              : Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    color: pageIndex == 0
                                        ? mainColor
                                        : Colors.transparent,
                                    height: 3,
                                    width: 50,
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageIndex = 1;
                              });
                            },
                            child: SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Works",
                                      style: blackTextFont.copyWith(
                                          color: pageIndex == 1
                                              ? mainColor
                                              : Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    color: pageIndex == 1
                                        ? mainColor
                                        : Colors.transparent,
                                    height: 3,
                                    width: 50,
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageIndex = 2;
                              });
                            },
                            child: SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Service",
                                      style: blackTextFont.copyWith(
                                          color: pageIndex == 2
                                              ? mainColor
                                              : Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    color: pageIndex == 2
                                        ? mainColor
                                        : Colors.transparent,
                                    height: 3,
                                    width: 50,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AnimatedContainer(
                      margin: const EdgeInsets.only(right: 30),
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.elasticIn,
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          launchInBrowser("wa.me/+6289636190198");
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mainColor,
                            textStyle: whiteTextFont.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                        child: const Text("Let's Talk"),
                      ),
                    ),
                  ),
                ],
              )),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(profilePicPath))),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello, I'm",
                        style: blackTextFont.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Hari Surya",
                        style: blackTextFont.copyWith(
                            color: mainColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 500,
                        child: Text(
                          "An energetic IT Project Manager with 7+ years of experience in planning, controlling, executing, and closing various IT projects.",
                          style: blackTextFont.copyWith(
                              color: Colors.black, fontSize: 20),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(mailPath))),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(linkedlnPath))),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                image:
                                    DecorationImage(image: AssetImage(igPath))),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                image:
                                    DecorationImage(image: AssetImage(ytPath))),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(twitterPath))),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
