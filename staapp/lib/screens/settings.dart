import 'package:flutter/material.dart';
import 'package:staapp/theme/styles.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Styles.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Styles.phonePadding),
        child: Column(
          children: [
            // First white box
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Styles.primaryBorderRadius,
                boxShadow: Styles.normalBoxShadow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Toggle for General Notifications
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Enable General Notifications',
                        style: TextStyle(fontSize: 16),
                      ),
                      Switch(
                        value: notificationsEnabled,
                        onChanged: (bool value) {
                          setState(() {
                            notificationsEnabled = value;
                          });
                        },
                        activeColor: Styles.primary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Send Feedback Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.secondary,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Send Feedback'),
                  ),
                  const SizedBox(height: 8),
                  // Log Out Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Log Out'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Second white box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Styles.primaryBorderRadius,
                boxShadow: Styles.normalBoxShadow,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Styles.secondary,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('FAQ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
