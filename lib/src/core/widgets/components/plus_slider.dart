import 'package:flutter/material.dart';

class PlusSlider extends StatelessWidget {
  final double min;
  final double max;
  final double initialValue;
  final bool showMinMaxText;
  final bool absorbing;
  final Color primaryColor;
  final Color inactiveColor;
  final Color accentColor;
  final Color divisionColor;
  final int divisions;
  final TextStyle minMaxTextStyle;
  final Function(double)? onChange;
  final Function(Function(double))? updateCurrentValue;

  const PlusSlider(
      {required this.min,
      required this.max,
      required this.divisions,
      required this.onChange,
      required this.updateCurrentValue,
      this.divisionColor = Colors.indigo,
      this.initialValue = 0.0,
      this.primaryColor = Colors.indigo,
      this.inactiveColor = Colors.indigo,
      this.accentColor = Colors.white,
      this.showMinMaxText = true,
      this.absorbing = true,
      this.minMaxTextStyle = const TextStyle(fontSize: 14),
      super.key});

  @override
  Widget build(BuildContext context) {
    return SliderFb4(
        min: min,
        max: max,
        divisions: divisions,
        onChange: onChange,
        updateCurrentValue: updateCurrentValue,
        primaryColor: primaryColor,
        accentColor: accentColor,
        divisionColor: divisionColor,
        showMinMaxText: showMinMaxText,
        initialValue: initialValue,
        minMaxTextStyle: minMaxTextStyle,
        inactiveColor: inactiveColor,
        absorbing: absorbing);
  }
}

class SliderFb4 extends StatefulWidget {
  final double min;
  final double max;
  final double initialValue;
  final bool showMinMaxText;
  final bool absorbing;
  final Color primaryColor;
  final Color inactiveColor;
  final Color accentColor;
  final Color divisionColor;
  final int divisions;
  final TextStyle minMaxTextStyle;
  final Function(double)? onChange;
  final Function(Function(double))? updateCurrentValue;

  const SliderFb4(
      {required this.min,
      required this.max,
      required this.divisions,
      required this.onChange,
      required this.updateCurrentValue,
      this.divisionColor = Colors.indigo,
      this.initialValue = 0.0,
      this.primaryColor = Colors.indigo,
      this.inactiveColor = Colors.indigo,
      this.accentColor = Colors.white,
      this.showMinMaxText = true,
      this.absorbing = true,
      this.minMaxTextStyle = const TextStyle(fontSize: 14),
      super.key});

  @override
  _SliderFb4State createState() => _SliderFb4State();
}

class _SliderFb4State extends State<SliderFb4> {
  late double _currentSliderValue;

  @override
  void initState() {
    super.initState();
    _currentSliderValue = widget.initialValue;

    if (widget.updateCurrentValue != null) {

      widget.updateCurrentValue!(updateCurrentState);
    }
  }

  updateCurrentState(value){
    if(mounted)
   {
     setState(() {
       _currentSliderValue = value;
     });
   }
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: widget.absorbing,
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: widget.primaryColor,
          inactiveTrackColor: widget.primaryColor.withAlpha(35),
          trackShape: const RoundedRectSliderTrackShape(),
          trackHeight: 4.0,
          thumbShape: CustomSliderThumbCircle(
            thumbRadius: 20,
            min: widget.min,
            max: widget.max,
          ),
          thumbColor: widget.primaryColor,
          overlayColor: widget.primaryColor.withAlpha(35),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
          tickMarkShape: const RoundSliderTickMarkShape(),
          activeTickMarkColor: widget.accentColor,
          inactiveTickMarkColor: widget.divisionColor,
          valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
          valueIndicatorColor: widget.primaryColor.withAlpha(35),
          valueIndicatorTextStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        child: Slider(
          inactiveColor: widget.inactiveColor,
          min: widget.min,
          max: widget.max,
          value: _currentSliderValue,
          divisions: widget.divisions,
          onChanged: widget.onChange != null
              ? (value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                  widget.onChange!(value);
                }
              : null,
        ),
      ),
    );
  }
}

// Credits to @Ankit Chowdhury
class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final double min;
  final double max;

  const CustomSliderThumbCircle({
    required this.thumbRadius,
    this.min = 0.0,
    this.max = 100.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.white //Thumb Background Color
      ..style = PaintingStyle.fill;

    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w700,
        color: sliderTheme.thumbColor, //Text Color of Value on Thumb
      ),
      text: getValue(value),
    );

    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawCircle(center, thumbRadius * .9, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
