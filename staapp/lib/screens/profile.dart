import 'package:staapp/screens/settings.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _profileImage = 'assets/logos/hasini.png'; // Default profile image

  final List<String> _profileOptions = [
    'assets/logos/hasini.png',
    'assets/logos/unicorn.png',
    'assets/logos/dog.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildCurvedHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Hasini Vijay Inbasri',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 177, 14, 14),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildInfoCard('Student ID', 'Hv1173559'),
                  _buildInfoCard('Email', 'hasini.vijayinbasri26@ycdsbk12.ca'),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCurvedHeader() {
  return SizedBox(
    height: 250,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFF8B0000),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            border: Border(
              bottom: BorderSide(
                color: Color.fromARGB(255, 238, 234, 22),
                width: 6,
              ),
            ),
          ),
          height: 250,
        ),
        Positioned(
          top: 30,
          right: 20,
          child: IconButton(
            icon: const Icon(Icons.settings, color: Colors.white, size: 28),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
        ),
        Positioned(
          top: 30,
          child: _buildProfilePicture(),
        ),
        Positioned(
          bottom: 40,
          child: SafeArea(
            child: Text(
              'Titan Profile',
              style: TextStyle(
                color: const Color.fromARGB(255, 223, 188, 10),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildProfilePicture() {
    return GestureDetector(
      onTap: _showProfileOptionsDialog,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(199, 255, 255, 21).withOpacity(0.5),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 60,
          backgroundColor: const Color.fromARGB(255, 200, 203, 8),
          child: CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage(_profileImage),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String content) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
        side: const BorderSide(
          color: Color.fromARGB(255, 144, 8, 8),
          width: 6,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 171, 9, 9),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B0000),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  content,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showProfileOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Change Profile Picture'),
          content: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _profileOptions.length,
                itemBuilder: (BuildContext context, int index) {
                  final image = _profileOptions[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _profileImage = image;
                      });
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(image),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}