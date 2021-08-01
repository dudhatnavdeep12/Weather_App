import 'package:flutter/material.dart';
import 'package:weather_api_app/utils/utils.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool expandCity = false;
  bool expandCountry = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            "Choose Location",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.location_city, color: Colors.white),
                  title: Text("Citys",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  trailing: Icon(
                      expandCity ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white),
                  onTap: () {
                    setState(() {
                      expandCity = !expandCity;
                    });
                  },
                ),
                if (expandCity)
                  Column(
                    children: [
                      CityListTile(
                          name: "Mumbai",
                          icon: Icons.location_city,
                          lat: "19.0144",
                          lon: "72.8479"),
                      CityListTile(
                          name: "Delhi",
                          icon: Icons.location_city,
                          lat: "28.6667",
                          lon: "77.2167"),
                      CityListTile(
                          name: "Bangalore",
                          icon: Icons.location_city,
                          lat: "12.9762",
                          lon: "77.6033"),
                      CityListTile(
                          name: "Hyderabad",
                          icon: Icons.location_city,
                          lat: "17.3753",
                          lon: "78.4744"),
                      CityListTile(
                          name: "Ahmedabad",
                          icon: Icons.location_city,
                          lat: "23.0333",
                          lon: "72.6167"),
                      CityListTile(
                          name: "Surat",
                          icon: Icons.location_city,
                          lat: "21.1667",
                          lon: "72.8333"),
                      CityListTile(
                          name: "Chennai",
                          icon: Icons.location_city,
                          lat: "13.0878",
                          lon: "80.2785"),
                      CityListTile(
                          name: "Andaman And Nicobar",
                          icon: Icons.location_city,
                          lat: "11.6670",
                          lon: "92.7359"),
                      CityListTile(
                          name: "Andhra Pradesh",
                          icon: Icons.location_city,
                          lat: "14.7504",
                          lon: "78.5700"),
                      CityListTile(
                          name: "Goa",
                          icon: Icons.location_city,
                          lat: "15.4919",
                          lon: "73.8180"),
                      CityListTile(
                          name: "Himachal Pradesh",
                          icon: Icons.location_city,
                          lat: "31.1000",
                          lon: "77.1665"),
                      CityListTile(
                          name: "Rajasthan",
                          icon: Icons.location_city,
                          lat: "26.4499",
                          lon: "74.6399"),
                      CityListTile(
                          name: "Chandigarh",
                          icon: Icons.location_city,
                          lat: "30.7199",
                          lon: "76.7800"),
                      CityListTile(
                          name: "Jammu And Kashmir",
                          icon: Icons.location_city,
                          lat: "34.2999",
                          lon: "74.4666"),
                      CityListTile(
                          name: "Karnataka",
                          icon: Icons.location_city,
                          lat: "12.5703",
                          lon: "76.9199"),
                      CityListTile(
                          name: "Mizoram",
                          icon: Icons.location_city,
                          lat: "23.7103",
                          lon: "92.7200"),
                    ],
                  ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.public, color: Colors.white),
                  title: Text("Country",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  trailing: Icon(
                      expandCountry ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white),
                  onTap: () {
                    setState(() {
                      expandCountry = !expandCountry;
                    });
                  },
                ),
                if (expandCountry)
                  Column(
                    children: [
                      CityListTile(
                          name: "India",
                          icon: Icons.public,
                          lat: "28.6128",
                          lon: "77.2311"),
                      CityListTile(
                          name: "Netherlands",
                          icon: Icons.public,
                          lat: "52.5",
                          lon: "5.75"),
                      CityListTile(
                          name: "Switzerland",
                          icon: Icons.public,
                          lat: "47.0002",
                          lon: "8.0143"),
                      CityListTile(
                          name: "Canada",
                          icon: Icons.public,
                          lat: "60.1087",
                          lon: "-113.6426"),
                      CityListTile(
                          name: "Germany",
                          icon: Icons.public,
                          lat: "51.5",
                          lon: "10.5"),
                      CityListTile(
                          name: "Japan",
                          icon: Icons.public,
                          lat: "35.6854",
                          lon: "139.7531"),
                      CityListTile(
                          name: "America",
                          icon: Icons.public,
                          lat: "47.5001",
                          lon: "-120.5015"),
                      CityListTile(
                          name: "New Zealand",
                          icon: Icons.public,
                          lat: "-40.9005",
                          lon: "174.8859"),
                      CityListTile(
                          name: "Russia",
                          icon: Icons.public,
                          lat: "61.5240",
                          lon: "105.3187"),
                      CityListTile(
                          name: "Sweden",
                          icon: Icons.public,
                          lat: "60.1281",
                          lon: "18.6435"),
                      CityListTile(
                          name: "Singapore",
                          icon: Icons.public,
                          lat: "1.3520",
                          lon: "103.8198"),
                      CityListTile(
                          name: "Thailand",
                          icon: Icons.public,
                          lat: "15.8700",
                          lon: "100.9925"),
                      CityListTile(
                          name: "South Africa",
                          icon: Icons.public,
                          lat: "-30.5594",
                          lon: "22.9375"),
                      CityListTile(
                          name: "Italy",
                          icon: Icons.public,
                          lat: "41.8719",
                          lon: "12.5673"),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
