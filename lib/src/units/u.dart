import 'package:ultimate_containers/ultimate_containers.dart';

class U extends Unit {
  late final Unit unit;

  U(String string) {
    if (string.endsWith('px'))
      this.unit = Px(parse('px', string));
    else if (string.endsWith('rem'))
      this.unit = Rem(parse('rem', string));
    else if (string.endsWith('em'))
      this.unit = Em(parse('em', string));
    else if (string.endsWith('vw'))
      this.unit = Vw(parse('vw', string) / 100);
    else if (string.endsWith('vh'))
      this.unit = Vh(parse('vh', string)) / 100;
    else if (string.endsWith('vmin'))
      this.unit = Vmin(parse('vmin', string) / 100);
    else if (string.endsWith('vmax'))
      this.unit = Vmax(parse('vmax', string) / 100);
    else if (string.endsWith('%'))
      this.unit = PercentW(parse('%', string) / 100);
    else
      throw Exception('Invalid unit: $string');
  }

  double parse(String suffix, String string) => double.parse(string.replaceAll(suffix, ''));

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  Unit operator /(double factor) => unit / factor;

  @override
  Unit operator *(double factor) => unit * factor;

  @override
  double px(UnitContext? uctx) => unit.px(uctx);
}

U u(String string) => U(string);
