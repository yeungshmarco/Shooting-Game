AudioPlayer gunshotSoundEffect, gunReloadSoundEffect;
//
void audioSetup() {
  gunshotSoundEffect = minim.loadFile("Gunfire And Voices.mp3");
  gunReloadSoundEffect = minim.loadFile("Gun Shooting Cocking Air.mp3");
}
