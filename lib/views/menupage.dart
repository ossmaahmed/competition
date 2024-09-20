import 'package:competition/views/personalinfo.dart';
import 'package:competition/views/tahweel.dart';
import 'package:competition/views/tanzeem.dart';
import 'package:flutter/material.dart';

class SecountPage extends StatefulWidget {
  const SecountPage({super.key});

  @override
  State<SecountPage> createState() => _SecountPageState();
}

class _SecountPageState extends State<SecountPage> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xffd0c6ba),
        body: Center(
          child: Column(children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/logo (2).png"),
                ),
              ],
            ),
            const SizedBox(
              width: 0,
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(40),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  color: Color(0xff999e80),
                  borderRadius: BorderRadius.circular(25)),
              child: Text("اهلا بك ي اسامه"),
            ),
            const SizedBox(
              width: 0,
              height: 20,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>First()),
                      );
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff526552),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/dolar.png"),
                        ),
                        const SizedBox(
                          width: 20,
                          height: 0,
                        ),
                        Text("حساب تحويل العملات الي الدولار"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 0,
              height: 20,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: (){
                    
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff526552),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/aqsat.jpg"),
                        ),
                       SizedBox(
                          width: 20,
                          height: 0,
                        ),
                        Text("عرض الاقساط ومواعيدها"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 0,
              height: 20,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyWidget()));
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff526552),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/l1.png"),
                        ),
                        SizedBox(
                          width: 0,
                          height: 20,
                        ),
                        Text("تنظيم المصروفات بالنسبه للدخل الشهري"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 0,
              height: 20,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const Personalinfo())
                      );
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                        color:const Color(0xff526552),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/data.jpg"),
                        ),
                        SizedBox(
                          width: 0,
                          height: 20,
                        ),
                        Text("البيانات الشخصيه"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ));
});
}
}