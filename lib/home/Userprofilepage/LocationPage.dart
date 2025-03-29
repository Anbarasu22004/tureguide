import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];
  bool _isLoading = false;


  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Location services are disabled.")),
      );
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Location permission denied.")),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Location permissions are permanently denied.")),
      );
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude, position.longitude);

    if (placemarks.isNotEmpty) {
      Placemark place = placemarks.first;
      String address = "${place.locality}, ${place.administrativeArea}, ${place.country}";
      setState(() {
        _searchController.text = address;
      });
    }
  }


  Future<void> _searchLocation(String query) async {
    if (query.isEmpty) return;

    setState(() => _isLoading = true);

    try {
      List<Location> locations = await locationFromAddress(query);
      List<String> results = [];

      for (var loc in locations) {
        List<Placemark> placemarks =
        await placemarkFromCoordinates(loc.latitude, loc.longitude);
        if (placemarks.isNotEmpty) {
          results.add("${placemarks.first.street}, ${placemarks.first.locality}");
        }
      }

      setState(() {
        _searchResults = results;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: Unable to find location.")),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Location")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            TextFormField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search location...",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _isLoading
                    ? const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
                    : null,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: (value) {
                if (value.length > 2) _searchLocation(value);
              },
            ),

            const SizedBox(height: 10),


            Expanded(
              child: _searchResults.isEmpty
                  ? const Center(child: Text("No results found"))
                  : ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_searchResults[index]),
                    onTap: () {
                      _searchController.text = _searchResults[index];
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
