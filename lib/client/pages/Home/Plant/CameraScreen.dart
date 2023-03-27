import 'package:biome/client/pages/Home/Plant/ResultFail.dart';
import 'package:biome/client/pages/Home/Plant/ScanResultPage.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  int direction = 0;
  bool init = false;
  @override
  void initState() {
    startCamera(direction);
    super.initState();
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[direction],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      setState(() {
        init = true;
      });

      if (!mounted) {
        return;
      }
      setState(() {}); //To refresh widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (init) {
      return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: CameraPreview(cameraController),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "images/Subtract.png",
                  height: MediaQuery.of(context).size.height * 0.7,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomPaint(
                  size: Size(500, (500 * 0.25).toDouble()),
                  painter: RPSCustomPainter(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                      child: IconButton(
                        icon: const Icon(
                          Icons.photo,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Get.to(()=>const ResultFail());
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: IconButton(
                        icon: const Icon(
                          Icons.refresh_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () async {
                          setState(() {
                            direction = direction == 0 ? 1 : 0;
                            startCamera(direction);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      cameraController.takePicture().then((XFile? file) {
                        if (mounted) {
                          if (file != null) {
                            print("Picture saved to ${file.path}");
                            Get.to(()=>const ScanResult());
                          }
                        }
                      });
                    },
                    child: const Icon(
                      Icons.camera_outlined,
                      color: Colors.white,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: MyDecoration.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Image(
                          image: AssetImage("images/icon2.png"),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
          body: Center(
              child: CircularProgressIndicator(
        color: MyDecoration.green,
      )));
    }
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = MyDecoration.green.withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.5000000);
    path0.lineTo(size.width * 0.62260000, size.height * 0.5000000);
    path0.quadraticBezierTo(size.width * 0.5884375, size.height * 0.2000000,
        size.width * 0.5000000, size.height * 0.2000000);
    path0.quadraticBezierTo(size.width * 0.4085625, size.height * 0.2005000,
        size.width * 0.3770000, size.height * 0.5000000);
    path0.lineTo(0, size.height * 0.5000000);
    path0.lineTo(0, size.height);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
