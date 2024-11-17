import 'package:flutter/material.dart';

import '../res.dart';

class Statues extends StatefulWidget {
  const Statues({super.key});

  @override
  State<Statues> createState() => _StatuesState();
}

class _StatuesState extends State<Statues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Updates',
            style: AppStyle.headlineStyle2.copyWith(fontSize: 28),
          ),
          actions: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.more_vert_outlined),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ]),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Status',
                  style: AppStyle.headlineStyle2
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Text(
              'Recent updates',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
