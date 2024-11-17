import 'package:flutter/material.dart';
import 'package:splash_sc/res.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Communities',
          style: AppStyle.headlineStyle2,
        ),
      ),
    );
  }
}
