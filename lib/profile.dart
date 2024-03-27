import 'package:flutter/material.dart';
import 'package:monsoon/fovourites.dart';
import 'package:monsoon/homescreen.dart';
import 'package:monsoon/search.dart';

class Profile extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 213, 213),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileSection(),
              const SizedBox(height: 42),
              _buildInputField('Mail ID'),
              const SizedBox(height: 42),
              _buildInputField('Mobile Number'),
              const SizedBox(height: 42),
              _buildInputField('Address 1'),
              const SizedBox(height: 42),
              _buildInputField('Address 2'),
              const SizedBox(height: 20),
              _buildButton(),
              const SizedBox(height: 27),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 40, right: 20),
        child: _buildBottomNavigationBar(context),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 52),
          child: Container(
            width: 96,
            height: 107,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage("assets/images/User.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(width: 13),
        Padding(
          padding: const EdgeInsets.only(top: 102),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Full Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                width: 215,
                height: 35,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInputField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 321,
          height: label.startsWith('Address') ? 93 : 40,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 176),
      child: Container(
        width: 145,
        height: 46,
        decoration: ShapeDecoration(
          color: const Color(0xFF480460),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Center(
          child: Text(
            'Change / Edit',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      width: 370,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIcon('assets/images/Home.png', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          }),
          _buildIcon('assets/images/Search (1).png',  () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          }),
          _buildIcon('assets/images/Love.png', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Favourites()),
            );
          }),
          _buildIcon('assets/images/User.png',() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildIcon(String assetName, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetName),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
