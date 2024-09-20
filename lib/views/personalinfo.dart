import 'package:competition/Constants/constant_file.dart';
import 'package:competition/Databases/sharedpref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  @override
  Widget build(BuildContext context) {
    ScreenSize.intial(context);
    return Scaffold(
      backgroundColor: Color(0xffd0c6ba),
      appBar: AppBar(
        title: const Text('ميزان', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor:const Color(0xffd0c6ba),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                  height:ScreenSize.height*0.7,
                  width: ScreenSize.width*0.8,
                  decoration:BoxDecoration(
                    color: kPrimaryColor3,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  
                                ),
                ),
                
                const Positioned(
                  right: 160,
                  top: -80,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: kPrimaryColor3,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/slogan.gif'),
                    ),
                  ),
                ),
                Positioned(
            
              top:140,
              left: 170,
              child: Text( 
                'Mr. ${Cachhelper.getDataString(key: 'fullname')}',
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)
                )
              ),

              Positioned(
                top:190,
                left: 170,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kPrimaryColor3
                  ),
                  child: Center(
                    child: Text(
                     '${Cachhelper.getDataString(key: 'email')}',
                     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold) 
                    ),
                  ),
                ),
                
                )

                ]
            ),
            
          ],
        ),
      ),
    );
  }
}