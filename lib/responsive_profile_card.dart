import 'package:flutter/material.dart';
import 'package:layout/login_screen.dart';

// The main widget for this specific view
class ResponsiveProfileCard extends StatelessWidget {
  const ResponsiveProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 3: LayoutBuilder")),
      body: Center(
        // We wrap the card in a Container to give it a max width for the demo
        // so it doesn't stretch across the entire screen on a huge monitor.
        child: Container(
          color: Colors.grey[200],
          // This constraint box is optional, but helps simulate the layout.
          // Otherwise will be as wide as the screen
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.all(20),

          // === THE CORE LOGIC ===
          // LayoutBuilder uses sizes relative to the 
          // parent widget, not the device size.
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                // Wide Layout (Row)
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildAvatar(),
                    const SizedBox(width: 20),
                    Expanded(child: _buildContent(context)),
                  ],
                );
              } else {
                // Narrow Layout (Column)
                return Column(
                  mainAxisSize: MainAxisSize.min, // Hug content vertically
                  children: [
                    _buildAvatar(),
                    const SizedBox(height: 20),
                    _buildContent(context),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }

  // === HELPER METHODS START HERE ===
  // We place these at the bottom to keep the 'build' method clean.

  Widget _buildAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.circle, // Let's make it a circle for better UI
      ),
      child: const Icon(Icons.person, size: 50, color: Colors.white),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,  // Align Left edge
      mainAxisSize: MainAxisSize.min, // Important for nesting columns
      children: [
        const Text(
          'Poindexter Dankworth',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          'Major: Computer Science\nYear: JR\nFavorite Class: CS220',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Text('Log in'),
        ),
      ],
    );
  }
}
