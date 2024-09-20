import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      
      child: Scaffold(
        backgroundColor:  Color(0xffd0c6ba),
        appBar: AppBar(
          title: const Text('ميزان'),
        ),
        body: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              const Positioned(
                left: 8,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/logo (2).png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF708871),
                  ),
                  child: const Center(
                    child: Text(
                      'في هذه الصفحة يتم عرض افضل نسبة لتنظيم مصروفاتك من خلال مرتبكب',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ]),
            MaterialButton(
              minWidth: 200,
              height: 50,
              color: const Color(0xFF606676),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {},
              child: const Text('500'),
            ),
            Container(
              child: const Column(
                children: [
                  Text(
                    'مصروفاتك الاساسيه الثابته',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text('فواتير الكهرباء والمياه'),
                      CircleAvatar(
                          backgroundImage: AssetImage('assets/images/l1.png')),
                    ],
                  ),
                  Row(
                    children: [
                      Text(' مصاريف التعليم '),
                      CircleAvatar(
                          backgroundImage: AssetImage('assets/images/l2.png')),
                    ],
                  ),
                  Row(
                    children: [
                      Text('  الرعايه الصحيه '),
                      CircleAvatar(
                          backgroundImage: AssetImage('assets/images/l2.png')),
                    ],
                  ),
                  Row(
                    children: [
                      Text('   النقل '),
                      CircleAvatar(
                          backgroundImage: AssetImage('assets/images/l4.png')),
                    ],
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