import 'package:flutter/material.dart';
import 'package:flutter_design_app/utils/constant/images.dart';

class ProfileScreen extends StatefulWidget {
 const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double coverImageHeight = 280;

  double profileImageBorder = 8;

  double profileImageHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: double.infinity,
                height: coverImageHeight,
                child: Image.network(
                  Images.profileIamge,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: coverImageHeight -
                      profileImageHeight / 2 -
                      profileImageBorder,
                  child: CircleAvatar(
                    radius: profileImageHeight / 2 + profileImageBorder,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: CircleAvatar(
                      radius: profileImageHeight / 2,
                      backgroundImage: const NetworkImage(Images.profileIamge),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
