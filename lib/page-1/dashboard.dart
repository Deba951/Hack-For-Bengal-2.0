import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';

class BloodBankWidget extends StatefulWidget {
  final String bloodType;

  BloodBankWidget({required this.bloodType});

  @override
  _BloodBankWidgetState createState() => _BloodBankWidgetState();
}

class _BloodBankWidgetState extends State<BloodBankWidget> {
  late Position? currentPosition;

  @override
  void initState() {
    super.initState();
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

  double calculateDistance(double lat, double lng) {
    if (currentPosition != null) {
      final double distanceInMeters = Geolocator.distanceBetween(
        currentPosition!.latitude,
        currentPosition!.longitude,
        lat,
        lng,
      );
      final double distanceInKm = distanceInMeters / 1000;
      return distanceInKm;
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 206, 213),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 58, 87),
        title: Text('Nearest Blood Banks to you of your category'),
      ),
      body: currentPosition == null
    ? Center(child: CircularProgressIndicator()) // Show loading indicator while fetching location
        : Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: currentPosition == null
                ? Center(child: CircularProgressIndicator()) // Show loading indicator while fetching location
                : StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('bank')
                  .where(widget.bloodType, isGreaterThan: 0)
                  .snapshots(),
              builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator(); // Show loading indicator while waiting for data
      }
                if (snapshot.hasData) {
                  final bankList = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: bankList.length,
                    itemBuilder: (context, index) {
                      final bankData = bankList[index].data() as Map<String, dynamic>;
                      final bankName = bankData['name'] as String?;
                      final bankPhone = bankData['phone'] as String?;
                      final bankLat = bankData['lat'] as String?;
                      final bankLng = bankData['long'] as String?;

                      double distance = 0.0;
                      if (bankLat != null && bankLng != null && bankLat.isNotEmpty && bankLng.isNotEmpty) {
                        distance = Geolocator.distanceBetween(
                          currentPosition!.latitude,
                          currentPosition!.longitude,
                          double.tryParse(bankLat) ?? 0.0,
                          double.tryParse(bankLng) ?? 0.0,
                        );
                      }


                      return ListTile(
                        title: Text(bankName!),
                        subtitle: Text('Phone: $bankPhone'),
                        trailing: Text('Distance: ${distance.toStringAsFixed(2)} km'),
                        onTap: () {
                          // Handle tap on blood bank item
                        },
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
          Container(
            padding: EdgeInsets.all(16.0),
            color: Color.fromARGB(255, 255, 58, 87),
            child: Text(
              'Check Other Blood Banks Nearest To You',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Expanded(
            child:currentPosition == null
                ? Center(child: CircularProgressIndicator()) // Show loading indicator while fetching location
                : StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('bank').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator(); // Show loading indicator while waiting for data
      }
                if (snapshot.hasData) {
                  final bankList = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: bankList.length,
                    itemBuilder: (context, index) {
                      final bankData = bankList[index].data() as Map<String, dynamic>;
                      final bankName = bankData['name'] as String?;
                      final bankPhone = bankData['phone'] as String?;
                      final bankLat = bankData['lat'] as String?;
                      final bankLng = bankData['long'] as String?;

                      double distance = 0.0;
                      if (bankLat != null && bankLng != null && bankLat.isNotEmpty && bankLng.isNotEmpty) {
                        distance = Geolocator.distanceBetween(
                          currentPosition!.latitude,
                          currentPosition!.longitude,
                          double.tryParse(bankLat) ?? 0.0,
                          double.tryParse(bankLng) ?? 0.0,
                        );
                      }


                      return ListTile(
                        title: Text(bankName!),
                        subtitle: Text('Phone: $bankPhone'),
                        trailing: Text('Distance: ${distance.toStringAsFixed(2)} km'),
                        onTap: () {
                          // Handle tap on blood bank item
                        },
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
        ],
      ),
    );
  }
}
