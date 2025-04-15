import 'package:flutter/material.dart';
import 'dart:math';

class infiniteMathList extends StatelessWidget {
  const infiniteMathList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Power of 2(until 64 because x86_64 arch)')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final result = pow(2, index);
          return Column(
            children: [
              ListTile(
                title: Text(
                  '2^$index = $result',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                color: Color.fromARGB(77, 158, 158, 158),
              ),
            ],
          );
        },
      ),
    );
  }
}