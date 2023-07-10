// import 'dart:html';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BloodBankUpdate extends StatefulWidget {
  final String phoneNumber;

  const BloodBankUpdate({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  _BloodBankUpdateState createState() => _BloodBankUpdateState();
}

class _BloodBankUpdateState extends State<BloodBankUpdate> {
  final TextEditingController aPositiveController = TextEditingController();
  final TextEditingController aNegativeController = TextEditingController();
  final TextEditingController bPositiveController = TextEditingController();
  final TextEditingController bNegativeController = TextEditingController();
  final TextEditingController oPositiveController = TextEditingController();
  final TextEditingController oNegativeController = TextEditingController();
  final TextEditingController abPositiveController = TextEditingController();
  final TextEditingController abNegativeController = TextEditingController();

  @override
  void dispose() {
    aPositiveController.dispose();
    aNegativeController.dispose();
    bPositiveController.dispose();
    bNegativeController.dispose();
    oPositiveController.dispose();
    oNegativeController.dispose();
    abPositiveController.dispose();
    abNegativeController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _fetchBankData();
  }

  Future<void> _fetchBankData() async {
    // Retrieve the bank data based on the phone number
    final QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('bank')
        .where('phone', isEqualTo: widget.phoneNumber)
        .get();

    if (snapshot.docs.isNotEmpty) {
      final Map<String, dynamic> data = snapshot.docs[0].data() as Map<String, dynamic>;
      aPositiveController.text = data['ap'].toString();
      aNegativeController.text = data['an'].toString();
      bPositiveController.text = data['bp'].toString();
      bNegativeController.text = data['bn'].toString();
      oPositiveController.text = data['op'].toString();
      oNegativeController.text = data['on'].toString();
      abPositiveController.text = data['abp'].toString();
      abNegativeController.text = data['abn'].toString();
    }
  }

  Future<void> _updateBankData() async {
    // Retrieve the bank document ID based on the phone number
    final QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('bank')
        .where('phone', isEqualTo: widget.phoneNumber)
        .get();

    if (snapshot.docs.isNotEmpty) {
      final String docId = snapshot.docs[0].id;

      // Update the document in the "bank" collection
      await FirebaseFirestore.instance.collection('bank').doc(docId).update({
        'ap': int.parse(aPositiveController.text),
        'an': int.parse(aNegativeController.text),
        'bp': int.parse(bPositiveController.text),
        'bn': int.parse(bNegativeController.text),
        'op': int.parse(oPositiveController.text),
        'on': int.parse(oNegativeController.text),
        'abp': int.parse(abPositiveController.text),
        'abn': int.parse(abNegativeController.text),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Bank data updated successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 46, 80),
        title: const Text('Update Bank Data',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,)
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'A+',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              ),

              _buildNumericField(aPositiveController),
              const SizedBox(height: 16.0),

              const Text('A-',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              _buildNumericField(aNegativeController),
              const SizedBox(height: 16.0),

              const Text('B+',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              _buildNumericField(bPositiveController),
              const SizedBox(height: 16.0),

              const Text('B-',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              _buildNumericField(bNegativeController),
              const SizedBox(height: 16.0),

              const Text('O+',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              _buildNumericField(oPositiveController),
              const SizedBox(height: 16.0),

              const Text('O-',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              _buildNumericField(oNegativeController),
              const SizedBox(height: 16.0),

              const Text('AB+',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              _buildNumericField(abPositiveController),
              const SizedBox(height: 16.0),

              const Text('AB-',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              _buildNumericField(abNegativeController),
              const SizedBox(height: 32.0),

              ElevatedButton(
                onPressed: _updateBankData,
                child: const Text('Save',
                textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }



  @override
  Widget _buildNumericField(TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
