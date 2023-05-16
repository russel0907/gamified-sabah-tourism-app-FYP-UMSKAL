// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, import_of_legacy_library_into_null_safe, avoid_print, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:home_interfaces/constant/const.dart';
import 'package:home_interfaces/widget/appbar.dart';
import 'aboutus_ui.dart';

class QRScannerUI extends StatefulWidget {
  @override
  State<QRScannerUI> createState() => _QRScannerUIState();
}

class _QRScannerUIState extends State<QRScannerUI> {
  String qrString = "Not Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar(title: 'Scan Places'),
      body: Container(
        color: kPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage('img/tourismscan.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              height: 250,
              child: Center(
                  child: Image(
                width: 200,
                image: AssetImage(
                  'img/logo/logo.png',
                ),
              )),
            ),
            Expanded(
                child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Expanded(
                      flex: 0,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            'CHECK-IN',
                            style: TextStyle(fontSize: 30),
                          )))),
                  Expanded(
                      flex: 0,
                      child: Container(
                          margin: EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Scan the qr code to indicate you arrived there using our app!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          )))),
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: Colors.black45,
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            qrString,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          )))),
                ],
              ),
            )),
            Expanded(
                flex: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kSecondaryColor,
                        ),
                        onPressed: scanQR,
                        child: Text('Scan',
                            style: TextStyle(
                              color: Colors.black,
                            ))),
                  ), //RaisedButton
                ))
          ],
        ),
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrString = value;
        });
      });
    } catch (e) {
      setState(() {
        qrString = "No Available Qr";
      });
    }
  }
}
