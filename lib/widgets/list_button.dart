import 'package:flutter/material.dart';

class ListButton extends StatefulWidget {
  final String text;
  final void Function() tapped;
  const ListButton({
    super.key,
    required this.text,
    required this.tapped,
  });

  @override
  State<ListButton> createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.tapped,
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}
