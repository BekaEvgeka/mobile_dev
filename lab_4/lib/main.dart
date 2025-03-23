import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Общежитие 19 КубГАУ',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String mainText = '''
Студенческий городок или так называемый кампус Кубанского ГАУ состоит
из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся.
Студенты первого курса обеспечены местами в общежитии полностью.
В соответствии с Положением о студенческих общежитиях университета,
при поселении между администрацией и студентами заключается
договор найма жилого помещения.

Воспитательная работа в общежитиях направлена на улучшение быта,
соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде.
Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям:
наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов,
комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации.

С целью улучшения условий быта студентов активно работает система студенческого самоуправления -
студенческие советы организуют всю работу по самообслуживанию.








Боже, храни сельхоз''';

  int likesCount = 68;
  bool isLiked = false;

  Widget buildTile(String title, String subtitle) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (isLiked) {
                  likesCount--;
                  isLiked = false;
                } else {
                  likesCount++;
                  isLiked = true;
                }
              });
            },
            icon: Icon(
              Icons.favorite,
              size: 25,
              color: isLiked ? Colors.redAccent : Colors.grey,
            ),
          ),
          Text(
            '$likesCount',
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }

  Widget buildIconBtn(String title, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () => print("Ура, нажали кнопку $title"),
            icon: Icon(
              icon,
              size: 25,
              color: Colors.blue,
            )),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(color: Colors.blueAccent, fontSize: 18))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Общежитие КубГАУ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/obshaga.webp'),
            Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildTile('Общежитие №19', 'Краснодар ул.Калинина 13'),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildIconBtn('ПОЗВОНИТЬ', Icons.phone),
                      buildIconBtn('МАРШРУТ', Icons.near_me),
                      buildIconBtn('ПОДЕЛИТЬСЯ', Icons.share),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    mainText,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}