import 'package:flutter/material.dart';

import 'themes.dart';
import 'scales.dart';

class GalleryOptions {
  GalleryOptions({
    this.theme,
    this.textScaleFactor,
    this.textDirection = TextDirection.ltr,
    this.timeDilation = 1.0,
    this.platform,
    this.showOffscreenLayersCheckerboard = false,
    this.showRasterCacheImagesCheckerboard = false,
    this.showPerformanceOverlay = false,
  });

  final GalleryTheme theme;
  final GalleryTextScaleValue textScaleFactor;
  final TextDirection textDirection;
  final double timeDilation;
  final TargetPlatform platform;
  final bool showPerformanceOverlay;
  final bool showRasterCacheImagesCheckerboard;
  final bool showOffscreenLayersCheckerboard;

  GalleryOptions copyWith({
    GalleryTheme theme,
    GalleryTextScaleValue textScaleValue,
    TextDirection textDirection,
    double timeDilation,
    TargetPlatform platform,
    bool showPerformanceOverlay,
    bool showRasterCacheImagesCheckerboard,
    bool showOffscreenLayersCheckerboard,
  }) {
    return GalleryOptions(
      theme: theme ?? this.theme,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      textDirection: textDirection ?? this.textDirection,
      timeDilation: timeDilation ?? this.timeDilation,
      platform: platform ?? this.platform,
      showPerformanceOverlay:
          showPerformanceOverlay ?? this.showPerformanceOverlay,
      showOffscreenLayersCheckerboard: showOffscreenLayersCheckerboard ??
          this.showOffscreenLayersCheckerboard,
      showRasterCacheImagesCheckerboard: showRasterCacheImagesCheckerboard ??
          this.showRasterCacheImagesCheckerboard,
    );
  }

  @override
  bool operator ==(dynamic other) {
    if (runtimeType != other.runtimeType)
      return false;
    final GalleryOptions typedOther = other;
    return theme == typedOther.theme
        && textScaleFactor == typedOther.textScaleFactor
        && textDirection == typedOther.textDirection
        && platform == typedOther.platform
        && showPerformanceOverlay == typedOther.showPerformanceOverlay
        && showRasterCacheImagesCheckerboard == typedOther.showRasterCacheImagesCheckerboard
        && showOffscreenLayersCheckerboard == typedOther.showRasterCacheImagesCheckerboard;
  }

  @override
  int get hashCode => hashValues(
    theme,
    textScaleFactor,
    textDirection,
    timeDilation,
    platform,
    showPerformanceOverlay,
    showRasterCacheImagesCheckerboard,
    showOffscreenLayersCheckerboard,
  );

  @override
  String toString() {
    return '$runtimeType($theme)';
  }
}
