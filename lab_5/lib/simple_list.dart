import 'package:flutter/material.dart';

class simpleList extends StatelessWidget {
  const simpleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple list')),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder:
            (context, index) => Divider(
          color: Colors.blue,
          height: 1,
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              ['Element perviy', 'Element two', 'Element drei'][index],
            ),
          );
        },
      ),
    );
  }
}