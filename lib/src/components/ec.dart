import 'package:flutter/widgets.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

/// Expanded Ultimate Container
class EC extends StatelessWidget {
  const EC(
    this.inputs, {
    Key? key,
  }) : super(key: key);

  final dynamic inputs;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: C(inputs),
    );
  }
}
