# godot-firebase-firestore-bug

### Description

Firestore requests sometimes return response code `404` and it completely blows up. More information can be found in [this issue](https://github.com/GodotNuts/GodotFirebase/issues/257). There is also additional discussion about this in the `#questions-answers` channel on the godot-firebase Discord.

### Device

```
Model: Galaxy S5
Manufacturer: Samsung
Platform: Android
Version: 6.0.1
OpenGL: 3.0.0
Chipset: msm8974
CPU: armeabi-v7a
```

### Configuration

* Create a Firebase project, add Firestore, enable anonymous login
* Create a collection named `test` and insert a few documents (It may be reproducable with an empty collection)
* Create `.env` with credentials or put them in `firebase.gd`
* Set up Android export and make sure you deploy with remote debug

### How to reproduce

Run the project on your device and wait. Sometimes it takes a while. Re-export the project and try again if it doesn't happen. Repeat this process.
I have had luck getting it to happen when the app loses focus but doesn't entirely close. You may need to experiment but it happens frequently enough
that it's a problem.
