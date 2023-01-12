import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> appid = <String>[
    'Dummy 1',
    'Dummy 2',
    'Dummy 3',
    'Dummy 4',
    'Dummy 5',
  ];

  final List<String> disrate = <String>[
    '33%',
    '40%',
    '60%',
    '70%',
    '75%',
  ];

  final List<int> likes = <int>[
    2985,
    2884,
    2199,
    2759,
    1950,
  ];

  final List<int> appprice = <int>[
    9900,
    12900,
    15900,
    35900,
    55900,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(thcolor),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'P2P Games',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Prepare to Win',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: Color(thcolor),
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Color(thcolor),
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Color(thcolor),
            ),
            onPressed: null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/back.png'),
                      fit: BoxFit.cover)),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 50,
                        width: 50,
                      ),
                      const Text(
                        'Prepare to Play !',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(thcolor),
                        ),
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'On Sale',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(thcolor),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 20,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(thcolor),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Center(
                        child: Text(
                          'More',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Color(thcolor),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      print('On Sale tap!');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Discount Rate',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(thcolor),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Current Price',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(thcolor),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: const Color(thcolor)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.separated(
                  itemCount: appid.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                appid[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(thcolor),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    disrate[index],
                                    style: const TextStyle(
                                        color: Color(thcolor), fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    '${appprice[index]}',
                                    style: const TextStyle(
                                      color: Color(thcolor),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                    color: Color(thcolor),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top 100',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(thcolor),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 20,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(thcolor),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Center(
                        child: Text(
                          'More',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Color(thcolor),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      print('Top 100 tap!');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Likes',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(thcolor),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Current Price',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(thcolor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: const Color(thcolor)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.separated(
                  itemCount: appid.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Get.toNamed('/detail'),
                      child: SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                appid[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(thcolor),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${likes[index]}',
                                    style: const TextStyle(
                                        color: Color(thcolor), fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    '${appprice[index]}',
                                    style: const TextStyle(
                                      color: Color(thcolor),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                    color: Color(thcolor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
