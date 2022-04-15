import 'dart:ffi';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late List<CameraDescription> cameras;
  CameraController? cameraController;
  List<dynamic>? _galleryPhotos;
  final ImagePicker _picker = ImagePicker();
  @override
  void initState() {
    super.initState();
  }

  Future<void> initializCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if (mounted) return;
    });
  }

  Future<void> getImagesFromeGallery() async {
   
    final List<XFile>? images = await _picker.pickMultiImage();
    setState(() {
      _galleryPhotos = images;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
    );
  }
}
