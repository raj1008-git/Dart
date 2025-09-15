// Depencency Inversion Principle
// High level Modules should not depend on Low Level modules.
// Both should depend on abstractions.

// Bad Approach
// class EmailSenderBad {
//   void sendEmail(String message) {
//     print('Sending Email: $message');
//   }
// }

// class NotificationServiceBad {
//   final EmailSenderBad _emailSender = EmailSenderBad();

//   void notify(String message) {
//     _emailSender.sendEmail(message);
//   }
// }

abstract class NotificationSender {
  void send(String message);
}

class EmailSender implements NotificationSender {
  @override
  void send(String message) {
    print('Semding Email: $message');
  }
}

class SMSSender implements NotificationSender {
  @override
  void send(String message) {
    print('Sending SMS: $message');
  }
}

class PushNotificationSender implements NotificationSender {
  @override
  void send(String message) {
    print('Sending push Notification: $message');
  }
}

class NotificationService {
  final NotificationSender _sender;
  NotificationService(this._sender);

  void notify(String message) {
    _sender.send(message);
  }
}
