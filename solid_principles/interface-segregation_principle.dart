// No client should be forced to depend on methods it doesnot use.
// One Massive Interface forces classes to implement methods they don't need.

abstract class Worker {
  void writeCode();
  void attendMeetings();
  void useComputer();

  void operateMachinery();
  void assembleProducts();
  void performQualityControl();
}

class SoftwareDeveloper implements Worker {
  @override
  void writeCode() {
    print('Writing Clean Maintainable code.');
  }

  @override
  void attendMeetings() {
    print('Participating in Sprint planning and standups.');
  }

  @override
  void useComputers() {
    print('Using computer for development work.');
  }

  // Forced to implement irrelevant methods.
  @override
  void operateMachinery() {
    throw UnimplementedError('Software Developer doesnot operate Machinery.');
  }
}
