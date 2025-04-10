import 'dart:async';

import 'package:basic_ride/common/enums/geolocation_permission.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationService {
  GeolocationService._();

  static GeolocationService? _instance;

  factory GeolocationService() => _instance ??= GeolocationService._();

  Completer<GeolocationPermission?>? _completer;

  Position? _currentPosition;

  Position? get currentPosition => _currentPosition;

  Future<GeolocationPermission?> saveCurrentPosition() async {
    final permission = await handlePermission();

    if (permission != null) {
      return null;
    }

    final position = await Geolocator.getCurrentPosition();
    _currentPosition = position;

    return null;
  }

  Future<GeolocationPermission?> handlePermission() async {
    if (_completer != null && !(_completer?.isCompleted ?? false)) {
      return _completer?.future;
    }

    _completer = Completer();
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _completer?.complete(GeolocationPermission.locationServiceDisable);
      _completer = null;

      return GeolocationPermission.locationServiceDisable;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _completer?.complete(GeolocationPermission.denied);
        _completer = null;

        return GeolocationPermission.denied;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return GeolocationPermission.deniedForever;
    }
    _completer?.complete(null);
    _completer = null;

    return null;
  }
}
