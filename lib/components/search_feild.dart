import 'package:flutter/material.dart';
import 'package:splash_sc/res.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 51, 50, 50),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.search, color: Colors.grey),
          Text(
            'Search',
            style: AppStyle.headlineStyle1.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
