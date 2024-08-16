import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/search_button.dart';
import 'package:lottie/lottie.dart' hide Marker;
import 'package:shimmer/shimmer.dart';

@RoutePage()
class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(42.882004, 74.582748);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId('center_marker'),
          position: _center,
          infoWindow: const InfoWindow(
            title: 'Фрунзе көчөсү',
            snippet: 'Центр карта Бишкека',
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.grey)),
        title: const SearchButton(
          title: 'Поиск',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SelectAddressMap()));
            },
            icon: const Icon(Icons.zoom_in),
          ),
        ],
        elevation: 2,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12,
        ),
        markers: _markers,
      ),
      bottomNavigationBar: BottomAppBar(
        child: DefElevatedButton(
          backgroundColor: ColorConstants.green,
          height: 50,
          title: 'Опубликовать',
          onPressed: () {},
        ),
      ),
    );
  }
}

const appBlue = Color(0xFF008AFD);

class SelectAddressMap extends StatefulWidget {
  const SelectAddressMap({super.key});

  @override
  State<SelectAddressMap> createState() => _HomePageState();
}

class _HomePageState extends State<SelectAddressMap> {
  Completer<GoogleMapController> googleMapController = Completer();
  CameraPosition? cameraPosition;
  late LatLng defaultLatLng;
  late LatLng draggedLatLng;
  String draggedAddress = "";
  late String mapStyle;
  Placemark? address;
  List<Placemark>? placeMarks;

  @override
  void initState() {
    _gotoUserCurrentPosition();
    _init();

    /// If you have not map_style.json then you can remove it. if you want to generate map_style.json link: https://mapstyle.withgoogle.com/
    rootBundle.loadString('assets/map_style.json').then((string) {
      mapStyle = string;
    });
    setState(() {});
    super.initState();
  }

  _init() {
    defaultLatLng = const LatLng(0.0, 0.0);
    draggedLatLng = defaultLatLng;
    cameraPosition = CameraPosition(target: defaultLatLng, zoom: 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 1,
            child: Stack(
              children: [
                _getMap(),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 10),
                  child: InkWell(
                      onTap: () {
                        context.maybePop();
                      },
                      child: const Icon(Icons.arrow_back, color: appBlue)),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                      onTap: () {
                        _gotoUserCurrentPosition();
                      },
                      child: const Icon(
                        Icons.my_location,
                        color: appBlue,
                      )),
                ),
                _getCustomPin(),
              ],
            )),
        Expanded(
            flex: 0,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: _showDraggedAddress(),
                ),
              ],
            ))
      ],
    ));
  }

  Widget _showDraggedAddress() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 10, top: 15),
          child: Row(
            children: [
              Icon(Icons.location_on, color: appBlue),
              SizedBox(width: 10),
              Text("Address",
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 10, top: 15),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  children: <Widget>[
                    Shimmer.fromColors(
                      enabled: false,
                      baseColor: Colors.black,
                      highlightColor: Colors.grey,
                      child: Text(draggedAddress,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontFamily: "Gilroy",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(appBlue),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              child: const Text("Next",
                  style: TextStyle(
                      fontSize: 16, color: Colors.white, fontFamily: 'Gilroy')),
            ),
          ),
        )
      ],
    );
  }

  Widget _getMap() {
    return GoogleMap(
      initialCameraPosition:
          cameraPosition!, //initialize camera position for map
      zoomControlsEnabled: false,
      zoomGesturesEnabled: true,
      onCameraIdle: () {
        _getAddress(draggedLatLng);
      },
      onCameraMove: (cameraPosition) {
        draggedLatLng = cameraPosition.target;
      },
      onMapCreated: (GoogleMapController controller) {
        if (!googleMapController.isCompleted) {
          googleMapController.complete(controller);
          controller.setMapStyle(mapStyle);
        }
      },
    );
  }

  Widget _getCustomPin() {
    return Center(
      child: SizedBox(
        width: 150,

        /// I used the map pin from the lottie. You can also use it if you want. Otherwise you can delete.
        child: Lottie.asset("assets/pin.json", width: 100, height: 100),
      ),
    );
  }

  /// get address from dragged pin
  Future _getAddress(LatLng position) async {
    placeMarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    address = placeMarks![0];
    String addressString =
        "${address!.street},${address!.locality},${address!.administrativeArea}, ${address!.country}";
    setState(() {
      draggedAddress = addressString;
    });
  }

  ///
  Future _gotoUserCurrentPosition() async {
    Position currentPosition = await _determineUserCurrentPosition();
    _gotoSpecificPosition(
        LatLng(currentPosition.latitude, currentPosition.longitude));
  }

  Future _gotoSpecificPosition(LatLng position) async {
    GoogleMapController mapController = await googleMapController.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: position, zoom: 15)));
    await _getAddress(position);
  }

  Future _determineUserCurrentPosition() async {
    LocationPermission locationPermission;
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      debugPrint("user don't enable location permission");
    }

    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        debugPrint("user denied location permission");
      }
    }
    if (locationPermission == LocationPermission.deniedForever) {
      debugPrint("user denied permission forever");
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
