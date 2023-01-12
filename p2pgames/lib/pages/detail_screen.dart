import 'package:flutter/material.dart';
import 'package:p2pgames/main.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          )
        ],
      )),
    );
  }
}
