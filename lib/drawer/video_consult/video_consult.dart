import 'package:flutter/material.dart';

class VideoConsultScreen extends StatefulWidget {
  const VideoConsultScreen({super.key});

  @override
  State<VideoConsultScreen> createState() => _VideoConsultScreenState();
}

class _VideoConsultScreenState extends State<VideoConsultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Video COnsult"),),
    );
  }
}
