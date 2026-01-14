import 'package:flutter/material.dart';

enum MenuDashboard {
  home(value: 0, location: "/", icon: Icons.home_filled, label: "Home"),
  ticket(
    value: 1,
    location: '/ticket',
    icon: Icons.local_movies,
    label: "Ticket",
  ),
  cinema(
    value: 2,
    location: '/cinema',
    icon: Icons.movie_creation_sharp,
    label: "Cinema",
  ),
  profile(value: 3, location: '/profile', icon: Icons.person, label: "Profile");

  const MenuDashboard({
    required this.value,
    required this.location,
    required this.icon,
    required this.label,
  });

  final int value;
  final String location;
  final IconData icon;
  final String label;
}
