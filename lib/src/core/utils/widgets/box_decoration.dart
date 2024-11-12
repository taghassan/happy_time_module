part of '../extensions.dart';

enum GradientType { sweep, linear, radial }

extension BoxDecorationExt on BoxDecoration {
  /// Returns a new BoxDecoration with an updated borderRadius.
  BoxDecoration withEllipticalBorderRadius(
      {required double x, required double y}) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius: BorderRadius.all(Radius.elliptical(x, y)),
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  /// Returns a new BoxDecoration with an updated borderRadius.
  BoxDecoration withCircularBorderRadius({required double radius , BorderRadius? fullBorderRadius}) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius:fullBorderRadius?? BorderRadius.all(Radius.circular(radius)),
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  BoxDecoration withImage({required ImageProvider<Object> image}) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: DecorationImage(image: image,fit: BoxFit.cover),
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  /// Returns a new BoxDecoration with an updated color.
  BoxDecoration withColor(Color color) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  /// Returns a new BoxDecoration with an updated gradient.
  BoxDecoration withGradient({
    GradientType type = GradientType.linear,
    required List<Color> colors,
    Alignment begin = Alignment.centerLeft,
    Alignment end = Alignment.centerRight,
    Alignment center = Alignment.center,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
    GradientTransform? transform,
    double radius = 0.5,
    double startAngle = 0.0,
    double endAngle = 2,
  }) {
    Gradient initGradient = LinearGradient(
      colors: colors,
      end: end,
      begin: begin,
      stops: stops,
      tileMode: tileMode,
      transform: transform,
    );

    switch (type) {
      case GradientType.sweep:
        initGradient = SweepGradient(
            colors: colors,
            center: center,
            startAngle: startAngle,
            stops: stops,
            tileMode: tileMode,
            transform: transform);
      case GradientType.linear:
        initGradient = LinearGradient(
            colors: colors,
            end: end,
            begin: begin,
            stops: stops,
            tileMode: tileMode,
            transform: transform);
      case GradientType.radial:
        initGradient = RadialGradient(
            colors: colors,
            center: center,
            stops: stops,
            tileMode: tileMode,
            transform: transform);
    }

    return BoxDecoration(
      color: color,
      gradient: initGradient,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  /// Returns a new BoxDecoration with an updated border.
  BoxDecoration withBorder(Border border) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }


  /// Returns a new BoxDecoration with an updated borderRadius.
  BoxDecoration withBorderRadius(BorderRadius borderRadius) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  /// Returns a new BoxDecoration with updated boxShadow.
  BoxDecoration withBoxShadow(List<BoxShadow> boxShadow) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  /// Returns a new BoxDecoration with an updated backgroundBlendMode.
  BoxDecoration withBackgroundBlendMode(BlendMode backgroundBlendMode) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }

  /// Returns a new BoxDecoration with an updated shape.
  BoxDecoration withShape(BoxShape shape) {
    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
  }
}
