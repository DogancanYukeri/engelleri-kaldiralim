import 'package:circle_button/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  String data = "";

  void scanQrCode() {
    FlutterBarcodeScanner.scanBarcode("#000000", "Cancel", true, ScanMode.QR)
        .then((value) {
      setState(() {
        this.data = value;
        launchUrl(Uri.parse(data), mode: LaunchMode.externalApplication);
      });
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text(
          "Qr Code Tarat",
          style: TextStyle(color: Colors.orange, fontSize: 40),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(visible: data != "", child: Text(data)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "QR Kod Okutunuz",
                    style: TextStyle(color: Colors.orange, fontSize: 25),
                  ),
                ],
              ),
              Divider(
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButton(
                    height: 80,
                    width: 80,
                    onTap: scanQrCode,
                    child: Icon(
                      Icons.qr_code,
                      color: Colors.white,
                      size: 50,
                    ),
                    backgroundColor: Colors.black,
                    borderColor: Colors.transparent,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
