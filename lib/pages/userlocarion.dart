import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/utils/app_colors.dart';

import '../cubit_location/location_cubit.dart';
import '../location_data/location_api_service.dart';
import '../utils/app_style.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationCubit(locationApiService: LocationApiService.create()),
      child: _UserLocationWidget(),
    );
  }
}

class _UserLocationWidget extends StatelessWidget {
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Location",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/bottom');
                      },
                      child: const Text(
                        "skip",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed"
                      " do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut "
                      "enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                      "ut aliquip ex ea commodo"
                      " consequat. Duis aute irure dolor in reprehenderit in voluptate",
                  style: Style.subtitle2,
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    var data=context.read<LocationCubit>().getLocation();
                    print(data);
                  },
                  child: AvatarGlow(
                    glowColor: shadow,
                    curve: Curves.fastEaseInToSlowEaseOut,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: primary,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assests/location.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                TextField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    labelText: "Enter location",
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
