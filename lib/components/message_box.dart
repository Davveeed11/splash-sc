import 'package:flutter/material.dart';
import 'package:splash_sc/res.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({super.key});

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          //image]
          const Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          // username with (check mark and message)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Text(
                      'Dad',
                      style: AppStyle.headlineStyle2.copyWith(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 280,
                    ),
                    const Text('00:00')
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.check),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Dad Good afternoon')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
