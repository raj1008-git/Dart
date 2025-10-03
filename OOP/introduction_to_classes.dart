class Name {
  final String first;
  final String last;

  Name(this.first, this.last);
  @override
  String toString() {
    return '$first $last';
  }

  String getInitials() {
    return '${first[0]}.${last[0]}';
  }

  String getFullNameUpperCase() {
    return '$first $last'.toUpperCase();
  }
}
