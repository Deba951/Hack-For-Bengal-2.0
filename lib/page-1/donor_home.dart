import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BloodDonationWidget extends StatefulWidget {
  final String phoneNumber;

  const BloodDonationWidget({required this.phoneNumber});

  @override
  _BloodDonationWidgetState createState() => _BloodDonationWidgetState();
}

class _BloodDonationWidgetState extends State<BloodDonationWidget> {
  late int donatedUnits;
  late Position currentPosition;

  @override
  void initState() {
    super.initState();
    donatedUnits = 0;
    _getCurrentPosition();
  }

  Future<void> _getCurrentPosition() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    setState(() {
      currentPosition = position;
    });
  }

  Future<void> _saveDonatedUnits() async {
    final userSnapshot = await FirebaseFirestore.instance
        .collection('user')
        .where('phone', isEqualTo: widget.phoneNumber)
        .limit(1)
        .get();

    if (userSnapshot.docs.isNotEmpty) {
      final userData = userSnapshot.docs[0].data();
      final userId = userSnapshot.docs[0].id;
      final currentDonatedUnits = userData['donate'];

      await FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .update({'donate': currentDonatedUnits + donatedUnits});

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Donation saved successfully')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User not found')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 206, 214),
    body: Container(
      decoration: BoxDecoration (
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xffb487fd), Color(0xffcc88ce)],
            stops: <double>[0.404, 1],
          ),),
      child: Column(
        children: [
          Container(
            
            margin: EdgeInsets.fromLTRB(140, 60, 140, 6),
            child: Container(
decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color.fromARGB(255, 154, 95, 244),
  ),
     
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Text(
                    donatedUnits.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        donatedUnits++;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Blood Bank List',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('bank').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final bankList = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: bankList.length,
                    itemBuilder: (context, index) {
                        // final bankData = bankList[index].data();
                        final bankData = bankList[index].data() as Map<String, dynamic>;
    final bankName = bankData['name'] as String?;
    final bankPhone = bankData['phone'] as String?;
    final bankLat = bankData['lat'] as String?;
    final bankLng = bankData['long'] as String?;
      
                        double distance = 0.0;
                        if (bankLat != null && bankLng != null && bankLat.isNotEmpty && bankLng.isNotEmpty) {
                          distance = Geolocator.distanceBetween(
                            currentPosition.latitude,
                            currentPosition.longitude,
                            double.tryParse(bankLat) ?? 0.0,
                            double.tryParse(bankLng) ?? 0.0,
                          );
                        }
      
                        return Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 0),
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color.fromARGB(255, 125, 53, 233),
  ),
                          
                          child: ListTile(
                            title: Text(bankName!, style: TextStyle(color: Color.fromARGB(255, 178, 152, 239),fontSize: 20,fontWeight: FontWeight.bold),),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Text('Phone: $bankPhone',style: TextStyle(color: Color.fromARGB(255, 251, 250, 254))),
                                Text('Distance: ${distance.toStringAsFixed(2)} meters',style: TextStyle(color: Color.fromARGB(255, 251, 250, 254))),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              
              onPressed: _saveDonatedUnits,
              child: Text('Save Donation'),
            ),
          ],
        ),
    ),
    );
  }
}
