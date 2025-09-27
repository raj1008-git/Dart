// Interface Segregation principle.
// Small , Focused interfaces.

// Interface for workers who code.
abstract class Coder {
  void writeCode();
  void debugCode();
  void reviewCode();
}

// Interface for Workers who attend meetings.
abstract class MeetingParticipant {
  void attendMeetings();
  void presentIdeas();
  void takeNotes();
}

// Interface for Workers who use computers.
abstract class ComputerUser {
  void useComputer();
  void manageFiles();
  void sendEmails();
}
