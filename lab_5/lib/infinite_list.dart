import 'package:flutter/material.dart';

class infiniteList extends StatelessWidget {
  const infiniteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Infinite list')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text('Element number $index');
        },
      ),
    );
  }
}