import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/fonts.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

class ScanQrScreen extends StatefulWidget {
  const ScanQrScreen({super.key});

  @override
  State<ScanQrScreen> createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.scanQr,
          style: AppFonts.textMedium20(context)
              .copyWith(color: AppColor.whiteColor),
        ),
        leading: const SizedBox(),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (result != null)
                    Text(
                      '${AppString.result}: ${result!.code}',
                      style: AppFonts.textSemiBold16(context)
                          .copyWith(color: AppColor.whiteColor),
                    )
                  else
                    Text(
                      AppString.scanACode,
                      style: AppFonts.textSemiBold16(context)
                          .copyWith(color: AppColor.whiteColor),
                    ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                AppColor.secondaryColor)),
                        onPressed: () async {
                          await controller?.toggleFlash();
                          setState(() {});
                        },
                        child: FutureBuilder(
                          future: controller?.getFlashStatus(),
                          builder: (context, snapshot) {
                            return snapshot.data == true
                                ? const Icon(Icons.flashlight_on,
                                    color: AppColor.whiteColor)
                                : const Icon(Icons.flashlight_off,
                                    color: AppColor.whiteColor);
                          },
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;

    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}
