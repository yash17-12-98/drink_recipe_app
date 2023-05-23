import '../constants/constants.dart';
import 'package:flutter/material.dart';

class DetailField extends StatelessWidget {
  final String title;
  final String value;

  const DetailField({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return value.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toString(),
                style: Theme.of(context).textTheme.titleWithoutLetterSpace,
              ),
              Text(
                value.toString(),
                style: Theme.of(context).textTheme.heading,
              ),
            ],
          )
        : Container();
  }
}
