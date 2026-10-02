import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

void registerFudiFontLicenses() {
  LicenseRegistry.addLicense(() async* {
    for (final entry in const {
      'Archivo / Archivo Condensed': 'assets/fonts/archivo-OFL.txt',
      'Roboto (respaldo de CanvasKit)': 'assets/fonts/roboto-Apache-2.0.txt',
    }.entries) {
      yield LicenseEntryWithLineBreaks([
        entry.key,
      ], await rootBundle.loadString(entry.value));
    }
  });
}
