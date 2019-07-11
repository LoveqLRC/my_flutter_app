import 'package:flutter/material.dart';
import 'updater.dart';
import 'options.dart';
import 'dart:async';

class GalleryApp extends StatefulWidget {
  const GalleryApp({
    Key key,
    this.updateUrlFetcher,
    this.enablePerformanceOverlay = true,
    this.enableRasterCacheImagesCheckerboard = true,
    this.enableOffscreenLayersCheckerboard = true,
    this.onSendFeedback,
    this.testMode = false,
  }) : super(key: key);

  final UpdateUrlFetcher updateUrlFetcher;
  final bool enablePerformanceOverlay;
  final bool enableRasterCacheImagesCheckerboard;
  final bool enableOffscreenLayersCheckerboard;
  final VoidCallback onSendFeedback;
  final bool testMode;

  @override
  State<StatefulWidget> createState() {
    return _GalleryAppState();
  }
}

class _GalleryAppState extends State<GalleryApp> {
  GalleryOptions _options;
  Timer _timerDilationTimer;


  @override
  Widget build(BuildContext context) {
    return null;
  }
}
