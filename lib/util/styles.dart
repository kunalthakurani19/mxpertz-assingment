import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'CM Sans Serif',
  fontSize: 26.0,
  height: 1.5,
);

const kSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  height: 1.2,
);

Gradient gradient1 = const LinearGradient(
  colors: [Color(0xFF77CDE1), Color(0xFF03978D)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient1withopacity = LinearGradient(
  colors: [
    const Color(0xFF77CDE1).withOpacity(0.5),
    const Color(0xFF03978D).withOpacity(0.5)
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient2 = const LinearGradient(
  colors: [Colors.transparent, Colors.transparent],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient3 = const LinearGradient(
  colors: [Color(0xFF1FA0FF), Color(0xFFB2F4FF)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
