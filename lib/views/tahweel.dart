import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  String selectedValue = ''; 
  TextEditingController amountController = TextEditingController(); 
  double result = 0.0; // نتيجة التحويل

  // معاملات التحويل الثابتة
  Map<String, double> exchangeRates = {
    'Egypt (EGP)': 0.032, // 1 EGP = 0.032 USD
    'Saudi Arabia (SAR)': 0.27, // 1 SAR = 0.27 USD
    'UAE (AED)': 0.27, // 1 AED = 0.27 USD
    'Bahrain (BHD)': 2.65, // 1 BHD = 2.65 USD
    'Kuwait (KWD)': 3.29, // 1 KWD = 3.29 USD
    'Qatar (QAR)': 0.27, // 1 QAR = 0.27 USD
    'Tunisia (TND)': 0.34, // 1 TND = 0.34 USD
    'Syria (SYP)': 0.0001, // 1 SYP = 0.0001 USD
    'Algeria (DZD)': 0.0074, // 1 DZD = 0.0074 USD
    'Palestine (ILS)': 0.27, // 1 ILS = 0.27 USD
    'Oman (OMR)': 2.60, // 1 OMR = 2.60 USD
    'Sudan (SDG)': 0.0018, // 1 SDG = 0.0018 USD
    'Lebanon (LBP)': 0.000067, // 1 LBP = 0.000067 USD
    'Libya (LYD)': 0.22, // 1 LYD = 0.22 USD
    'Mauritania (MRU)': 0.027, // 1 MRU = 0.027 USD
    'Iraq (IQD)': 0.00068, // 1 IQD = 0.00068 USD
    'Jordan (JOD)': 1.41, // 1 JOD = 1.41 USD
    'Somalia (SOS)': 0.0017, // 1 SOS = 0.0017 USD
    'Djibouti (DJF)': 0.0056, // 1 DJF = 0.0056 USD
    'Comoros (KMF)': 0.0022, // 1 KMF = 0.0022 USD
    'Morocco (MAD)': 0.11, // 1 MAD = 0.11 USD
    'Germany (EUR)': 1.07, // 1 EUR = 1.07 USD
    'Japan (JPY)': 0.0069, // 1 JPY = 0.0069 USD
    'England (GBP)': 1.26, // 1 GBP = 1.26 USD
    'Switzerland (CHF)': 1.09, // 1 CHF = 1.09 USD
    'Australia (AUD)': 0.64, // 1 AUD = 0.64 USD
  };

  List<String> items = [
    'Egypt (EGP)',
    'Saudi Arabia (SAR)',
    'UAE (AED)',
    'Bahrain (BHD)',
    'Kuwait (KWD)',
    'Qatar (QAR)',
    'Tunisia (TND)',
    'Syria (SYP)',
    'Algeria (DZD)',
    'Palestine (ILS)',
    'Oman (OMR)',
    'Sudan (SDG)',
    'Lebanon (LBP)',
    'Libya (LYD)',
    'Mauritania (MRU)',
    'Iraq (IQD)',
    'Jordan (JOD)',
    'Somalia (SOS)',
    'Djibouti (DJF)',
    'Comoros (KMF)',
    'Morocco (MAD)',
    'Germany (EUR)',
    'Japan (JPY)',
    'England (GBP)',
    'Switzerland (CHF)',
    'Australia (AUD)',
  ];

  void convertCurrency() {
    if (selectedValue.isNotEmpty && amountController.text.isNotEmpty) {
      double inputAmount = double.tryParse(amountController.text) ?? 0;
      double exchangeRate = exchangeRates[selectedValue] ?? 1;
      setState(() {
        result = inputAmount * exchangeRate; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffd0c6ba),
        appBar: AppBar(
          title: const Text('ميزان'),
          backgroundColor: Color(0xffd0c6ba),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                        'في هذه الغرفة يمكنك تحويل العملات الى قيمتها الدولارية',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      hint: const Text(' '),
                      value: selectedValue.isEmpty ? null : selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue ?? '';
                        });
                      },
                      items:
                          items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const Text('اختر العملة المراد تحويلها',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'ادخل المبلغ',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: convertCurrency,
                color: Colors.green,
                child: const Text(
                  'تحويل',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'المبلغ المحول: $result USD',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
     ),
);
}
}