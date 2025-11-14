import 'package:solid_principles_v2/breakable.dart';
import 'package:solid_principles_v2/workable.dart';

class Developer implements Workable, Breakable {
  @override
  void work() => print("Developer Coding");

  @override
  void takeBreak() => print("Developer takes a break");
}
