import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildPositioned(top: 60, left: 24, child: _buildSkipButton()),
          _buildPositioned(top: 109, left: 40, child: _buildImage('images/Frame.png')),
          _buildPositioned(top: 443, left: 80, child: _buildMainText('Now reading books will be easier')),
          _buildPositioned(top: 519, left: 55, child: _buildSubText(
            'Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.'
          )),
          _buildPositioned(left: 187, top: 619, child: _buildPageIndicator(3)),
          _buildPositioned(top: 659, left: 43, child: _buildButtons()),
        ],
      ),
    );
  }

  Positioned _buildPositioned({required double top, required double left, required Widget child}) {
    return Positioned(top: top, left: left, child: child);
  }

  Widget _buildSkipButton() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(16))),
      ),
      child: const Text('Skip', style: TextStyle(fontSize: 16, color: Colors.purple)),
    );
  }

  Widget _buildImage(String imagePath) {
    return SizedBox(width: 320, height: 320, child: Image.asset(imagePath, fit: BoxFit.contain));
  }

  Widget _buildMainText(String text) {
    return SizedBox(
      width: 243,
      height: 64,
      child: Text(text, textAlign: TextAlign.center, style: GoogleFonts.openSans(
        fontSize: 24, fontWeight: FontWeight.w700, height: 1.35, letterSpacing: -0.03, color: Colors.black
      )),
    );
  }

  Widget _buildSubText(String text) {
    return SizedBox(
      width: 292,
      height: 72,
      child: Text(text, textAlign: TextAlign.center, style: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, height: 1.5, color: const Color(0xFFA6A6A6)
      )),
    );
  }

  Widget _buildPageIndicator(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.5),
        child: Icon(Icons.circle, size: index == 0 ? 12 : 7, color: index == 0 ? Colors.purple : Colors.grey[300]),
      )),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        _buildButton('Continue', Colors.purple, Colors.white, true),
        const SizedBox(height: 8),
        _buildButton('Sign in', Colors.purple, Colors.purple, false)
      ],
    );
  }

  Widget _buildButton(String text, Color bgColor, Color textColor, bool isFilled) {
    return SizedBox(
      width: 327,
      height: 60,
      child: isFilled
          ? ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: Text(text, style: TextStyle(fontSize: 18, color: textColor)),
            )
          : OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                side: BorderSide.none,
              ),
              child: Text(text, style: TextStyle(fontSize: 18, color: textColor)),
            ),
    );
  }
}
