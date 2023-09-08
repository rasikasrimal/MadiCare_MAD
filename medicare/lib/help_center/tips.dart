import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/appbar.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Tips to account recovery'),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildBoldTip('Tips to complete account recovery steps'),
          buildTip(
              'If you can\'t sign in, follow these steps to increase your chances of getting back into your Account:'),
          buildTip('1. Go to the Account recovery page.'),
          buildTip(
              '2. As you complete the steps, use as many of the tips below as you can. (You might not see all the questions described here.)'),
          buildBoldTip('Answer as many questions as possible'),
          buildTip(
              "Try not to skip questions. If you're unsure of an answer, take your best guess rather than moving on to another question. Wrong guesses won’t kick you out of the process."),
          buildBoldTip('Use a familiar device & location'),
          buildTip('If possible:'),
          buildTip(
              '1. Use a computer, phone, or tablet where you frequently sign in'),
          buildTip(
              '2. Use the same browser (like Chrome or Safari) that you usually do'),
          buildTip(
              '3. Be in a location where you usually sign in, like at home or at work'),
          buildBoldTip(
              'Be exact with passwords & answers to security questions'),
          buildTip(
              'Details matter, so avoid typos and pay attention to uppercase and lowercase letters.'),
          buildBoldTip('Passwords'),
          buildTip(
              "If you're asked for the last password you remember, enter the most recent one you recall."),
          buildTip(
              '1. If you don\'t remember your last password: Use a previous one that you do remember. The more recent it was, the better.'),
          buildTip(
              '2. If you can\'t confidently recall any previous passwords: Take your best guess.'),
          buildBoldTip('Answers to security questions'),
          buildTip('If you\'re asked a security question and you:'),
          buildTip('1. Don\'t remember the answer: Take your best guess.'),
          buildTip(
              '2. Know the answer but didn\'t recover your account on your first try: Consider a different variation of the answer. For example, try "NY" instead of "New York" or "Phil" instead of "Philip."'),
          buildBoldTip('Enter an email connected to your account'),
          buildTip(
              "If you're asked to enter an email address you can check now, enter one that you've added to your account. Here are some examples:"),
          buildTip(
              '1. A recovery email address helps you get back in and is where we send you security notifications.'),
          buildTip(
              '2. An alternate email address is one you can use to sign in.'),
          buildTip(
              '3. A contact email address is where you get information about most services you use.'),
          buildBoldTip('Add helpful details'),
          buildTip(
              "If you're asked why you can't access your account, include helpful details."),
          buildTip('Some examples are:'),
          buildTip('1. You\'re traveling.'),
          buildTip('2. You get a specific error message.'),
          buildTip(
              '3. You think your account was compromised because of malware or another reason.'),
          buildTip(
              '4. You changed your password last week and can\'t remember it.'),
          buildTip(
              'If your description matches the information we have, this similarity can help your case.'),
        ],
      ),
    );
  }

  Widget buildBoldTip(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 24,
          fontWeight: FontWeight.w900,
          color: mainColor,
        ),
      ),
    );
  }

  Widget buildTip(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
