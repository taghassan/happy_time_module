import 'package:flutter/material.dart';

class PlusRowPicker extends StatefulWidget {
  final String title;
  final int defaultValue;
  final Function(int) onChangeValue;

  const PlusRowPicker(
      {required this.title,
        required this.onChangeValue,
        this.defaultValue = 2,
        super.key})
      : assert(defaultValue >= 0);

  @override
  State<PlusRowPicker> createState() => _RowPickerState();
}

class _RowPickerState extends State<PlusRowPicker> {
  late int _count;
  @override
  void initState() {
    super.initState();
    _count = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title),
        const Spacer(),
        Text(_count.toString()),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            OutlinedButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(const Size(10, 10)),
                ),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                  widget.onChangeValue(_count);
                },
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 22),
                )),
            OutlinedButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(const Size(10, 10)),
                ),
                onPressed: () {
                  if (_count > 0) {
                    setState(() {
                      _count -= 1;
                    });
                    widget.onChangeValue(_count);
                  }
                },
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 22),
                ))
          ],
        )
      ],
    );
  }
}