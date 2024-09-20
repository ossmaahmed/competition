import 'package:competition/Databases/sharedpref.dart';
import 'package:competition/views/menupage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedValue;
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  List<String> items1 = [
  'مصر',
  'السعودية',
  'الامارات',
  'البحرين',
  'الكويت',
  'قطر',
  'تونس',
  'سوريا',
  'الجزائر',
  'فلسطين',
  'عُمان',
  'السودان',
  'لبنان',
  'ليبيا',
  'موريتانيا',
  'العراق',
  'الاردن',
  'الصومال',
  'جيبوتى',
  'جزر القمر',
  'المغرب',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd0c6ba),
      appBar: AppBar(
        title: const Text('ميزان', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color(0xffd0c6ba),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('assets/images/login.gif'),
                width: 400,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: fullnamecontroller,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'الاسم كامل',
                    labelStyle: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء ادخال الاسم كامل';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'البريد الالكتروني',
                    labelStyle: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء ادخال البريد الالكتروني';
                    } else {
                      return null;
                    }
                  },
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'الدخل الشهري',
                    labelStyle: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء ادخال الدخل الشهري';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'الرصيد في البنك',
                    labelStyle: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء ادخال الرصيد في البنك';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      hint: const Text('اختر دولتك'),
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                      items: items1.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'اختر دولتك',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                

              ),

              MaterialButton(
                color: const Color.fromARGB(255, 1, 80, 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('تسجيل الدخول'),
                onPressed:(){
                  Cachhelper.saveData(key: 'fullname', value: fullnamecontroller.text);
                  Cachhelper.saveData(key: 'email', value: emailcontroller.text);
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const SecountPage()),);
                  }
                  else{
                    return ;
                  }
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
