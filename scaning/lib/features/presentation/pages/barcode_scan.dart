import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScan extends StatefulWidget {
  const BarcodeScan({super.key});

  @override
  State<BarcodeScan> createState() => _BarcodeScanState();
}

class _BarcodeScanState extends State<BarcodeScan> {
  String scaning = '';
  Future<void> scanBarCodeNormal() async {
    String barcodeScanResult;
    try {
      barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.BARCODE,
      );
      print(barcodeScanResult);
    } on PlatformException {
      barcodeScanResult = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      scaning = barcodeScanResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BARCODE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: scanBarCodeNormal,
                icon: const Icon(Icons.barcode_reader),
                label: const Text('Scanning')),
            Text(scaning),
          ],
        ),
      ),
    );
  }
}
