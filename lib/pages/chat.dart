import 'package:flutter/material.dart';
import 'package:splash_sc/components/message_box.dart';
import 'package:splash_sc/components/search_feild.dart';
import 'package:splash_sc/res.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          'WhatsApp',
          style: AppStyle.headlineStyle2,
        ),
        actions: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.more_vert_outlined),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.secondary),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SearchFeild(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 15,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => const MessageBox(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
            child: const Icon(Icons.update),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
              onPressed: () {}, child: const Icon(Icons.chat_sharp)),
        ],
      ),
    );
  }
}
