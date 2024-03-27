import 'package:flutter/material.dart';
import 'package:monsoon/fovourites.dart';
import 'package:monsoon/homescreen.dart';
import 'package:monsoon/profile.dart';

class SearchScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 210, 209),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            const SizedBox(height: 15),
            const Text(
              'Recent Searches',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.60,
              ),
            ),
            const SizedBox(height: 25),
            _buildRecentSearch('Taj Avante Mumbai'),
            _buildRecentSearch('Taj Avante Mumbai'),
            _buildRecentSearch('Taj Avante Mumbai'),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Clear Recent Searches',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    letterSpacing: 0.45,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          width: 370,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
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
              _buildIcon('assets/images/Search (1).png'),
              _buildIcon('assets/images/Love.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const Favourites ()),
                );
              }),
              _buildIcon('assets/images/User.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/images/Search (1).png',
              width: 24,
              height: 24,
            ),
          ),
          Text(
            'Search here...',
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.60,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentSearch(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 20),
      child: Row(
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Time Machine.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.60,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String assetName, [VoidCallback? onTap]) {
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
