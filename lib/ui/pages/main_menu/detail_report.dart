import 'package:flutter/material.dart';

class DetailReport extends StatefulWidget {
  final dynamic value;

  const DetailReport({Key? key, required this.value}) : super(key: key);

  @override
  _DetailReportState createState() => _DetailReportState();
}

class _DetailReportState extends State<DetailReport> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widget.value.toString().isNotEmpty
            ? Column(
                children: [Text(widget.value)],
              )
            : Container(),
      ),
    );
  }
}
