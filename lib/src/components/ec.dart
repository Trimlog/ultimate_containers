import 'package:flutter/widgets.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class EC extends StatelessWidget {
  /// Expanded Ultimate Container
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
