// Dependency Inversion Principle. //

abstract class MusicApp {
  void volumeUp();
  void volumeDown();
  void play();
  void pause();
}

// Phone only knows about the Standard and not the Specific Apps.
class Phone {
  MusicApp? currentMusicApp;

  void openApp(MusicApp app) {
    currentMusicApp = app;
    print('App Opened');
  }

  void pressVolumeUp() {
    print('Volume Up Button Pressed');
    if (currentMusicApp != null) {
      currentMusicApp!.volumeUp();
    }
  }

  void pressPlay() {
    print('Play Button Pressed');
    if (currentMusicApp != null) {
      currentMusicApp!.play();
    }
  }
}

class SpotifyApp implements MusicApp {
  int volume = 50;
  bool isPlaying = false;

  @override
  void volumeUp() {
    volume += 50;
    print('Spotify Volume: $volume');
  }

  @override
  void pause() {
    isPlaying = false;
  }

  @override
  void play() {
    isPlaying = true;
  }

  @override
  void volumeDown() {
    volume -= 10;
  }
}

void demonstratePhone() {
  final phone = Phone();

  phone.openApp(SpotifyApp());
  phone.pressVolumeUp();
  phone.pressPlay();
}


// Phone -> Interface -< Spotify. Inversion (loo at arrows)