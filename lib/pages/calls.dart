import 'package:flutter/material.dart';
import 'package:splash_sc/res.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calls',
          style: AppStyle.headlineStyle2,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorite',
              style: AppStyle.headlineStyle2
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: const Icon(Icons.favorite),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Add favorite',
                  style: AppStyle.headlineStyle2
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 230,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Center(
                child: Text(
                  '''To start calling contants who have whatsApp tap the call button at the bottom of the screen''',
                  style: AppStyle.headlineStyle2.copyWith(
                      fontWeight: FontWeight.normal, color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.call),
      ),
    );
  }
}
