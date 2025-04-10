import 'package:basic_ride/common/common.dart';
import 'package:basic_ride/core/di/di_get_it_implementation.dart';
import 'package:basic_ride/presentation/google_map/google_map_cubit/google_map_cubit.dart';
import 'package:basic_ride/presentation/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const double _cameraZoom = 15;
const double _cameraTilt = 0;
const double _cameraBreathing = 30;
const LatLng _sourceLocation = LatLng(42.7477863, -71.1699932);

class MapWidget extends StatelessWidget {
  final LocationViewModel? pickupLocation;
  final LocationViewModel? destLocation;
  const MapWidget({super.key, this.pickupLocation, this.destLocation});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:
          di<GoogleMapCubit>()
            ..fetchPolylineAndMarkers(pickupLocation, destLocation),
      child: const MapWidgetContent(),
    );
  }
}

class MapWidgetContent extends StatefulWidget {
  const MapWidgetContent({super.key});

  @override
  State<MapWidgetContent> createState() => _MapWidgetContentState();
}

class _MapWidgetContentState extends State<MapWidgetContent> {
  final Set<Marker> _markers = {};
  final Set<Polyline> _polylines = {};
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<GoogleMapCubit, GoogleMapCubitState>(
        listenWhen:
            (previous, current) =>
                current is GoogleMapCubitLoadedState ||
                current is GoogleMapCubitErrorState,
        listener: (context, state) async {
          if (state is GoogleMapCubitLoadedState) {
            _polylines.clear();
            _markers.clear();
            _polylines.add(
              state.polyline.copyWith(
                colorParam: BasicRideColorsPalette.green60,
              ),
            );
            _markers.addAll(state.markers);
          }

          if (state is GoogleMapCubitErrorState) {
            _polylines.clear();
            _markers.clear();
            ToastHelper.showToast(text: state.errorMessage.tr());
          }
        },
        builder: (context, state) {
          final currentPosition = GeolocationService().currentPosition;
          final initialTarget =
              currentPosition != null
                  ? LatLng(currentPosition.latitude, currentPosition.longitude)
                  : _sourceLocation;
          final initialLocation = CameraPosition(
            zoom: _cameraZoom,
            bearing: _cameraBreathing,
            tilt: _cameraTilt,
            target: initialTarget,
          );

          return GoogleMap(
            style: MapUtils.mapStyles,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            compassEnabled: false,
            tiltGesturesEnabled: false,
            markers: _markers,
            polylines: _polylines,
            mapType: MapType.normal,
            initialCameraPosition: initialLocation,
          );
        },
      ),
    );
  }
}
