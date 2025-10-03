import 'introduction_to_classes.dart';

class OfficialName extends Name {
  final String _title;

  OfficialName(this._title, String first, String last) : super(first, last);

  String get title => _title;

  @override
  String toString() {
    return '$_title. ${super.toString()}';
  }

  String getFormalGreeting() {
    return 'Good Day, $_title.${super.toString()}';
  }
}
