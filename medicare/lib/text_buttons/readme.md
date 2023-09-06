# Reusable Flutter Widgets

This repository contains a set of reusable Flutter widgets that you can easily integrate into your Flutter applications. These widgets are designed to simplify development, maintain code consistency, and enhance the user experience.

## MainTextButton (`main_text_button.dart`)

**Description:** A versatile and reusable text button that can be used throughout your Flutter app. It can be customized with different text and an optional `onPressed` function for interactivity.

**Usage:** Ideal for creating buttons with a common design style and consistent behavior across your app.

```dart
import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class MainTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const MainTextButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget implementation
  }
}
```
## TextButton1 and TextButton2 (text_buttons.dart)
Description:

TextButton1: A simple non-interactive text button.
TextButton2: An interactive text button.
Usage:

Use TextButton1 for displaying non-interactive text.
Use TextButton2 when you need an interactive button with customizable text.
```dart
import 'package:flutter/material.dart';

class TextButton1 extends StatelessWidget {
  // Widget implementation
}
```

```dart
import 'package:flutter/material.dart';

class TextButton2 extends StatelessWidget {
  // Widget implementation
}
```
## GradientTextButton (text_buttons.dart)
Description: A stylish gradient text button that adds visual appeal to your app's UI. It combines a gradient background with interactive text.

Usage: Perfect for creating eye-catching call-to-action buttons or highlighting important actions.

```dart
import 'package:flutter/material.dart';

class GradientTextButton extends StatelessWidget {
  // Widget implementation
}
```
## UsernamePasswordInput (username_pass.dart)
Description: A customizable input field for username and password with an optional password visibility toggle. It simplifies the creation of login and registration screens.

Usage: Utilize this widget to gather username and password input from users while maintaining a consistent and user-friendly design.
```dart
import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class UsernamePasswordInput extends StatefulWidget {
  // Widget implementation
}
```
These reusable widgets help maintain a clean and organized codebase, improve code reusability, and ensure a consistent user experience throughout your Flutter application.


This format should display code snippets properly within your `readme.md` file on GitHub.

