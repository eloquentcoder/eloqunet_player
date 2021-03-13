import 'package:eloquent_player/screens/songList.dart';
import 'package:eloquent_player/utils/neo_widgets.dart';
import 'package:eloquent_player/utils/size_config.dart';
import 'package:eloquent_player/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_text/gradient_text.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0XFF2e2e2e),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 1.6 * Responsive.imageSizeMultiplier,
                  vertical: 2.6 * Responsive.imageSizeMultiplier),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  neuButton(Icons.menu, () => null),
                  Text('Library',
                      style: GoogleFonts.montserrat(
                          fontSize: 2.6 * Responsive.textMultiplier,
                          color: Colors.white)),
                  neuButton(Icons.settings, () => null),
                ],
              ),
            ),
            headerText('QuickLinks'),
            SizedBox(
              height: 2.9 * Responsive.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                quickLink(
                    'All Songs',
                    Icons.music_note,
                    () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SongsList()))),
                quickLink(
                    'Favorites',
                    Icons.favorite_sharp,
                    () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SongsList()))),
                quickLink(
                    'Playlists',
                    Icons.playlist_play,
                    () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SongsList()))),
              ],
            ),
            SizedBox(
              height: 3.9 * Responsive.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                headerText('Albums'),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text(
                    'View More',
                    style: TextStyle(color: Colors.white38),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2 * Responsive.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                albumArt('Blinding Lights', 'assets/images/Art1.jpg'),
                albumArt('Soldier', 'assets/images/Art2.jpg'),
                albumArt('Make A Way', 'assets/images/Art3.jpg'),
              ],
            ),
            SizedBox(
              height: 3.9 * Responsive.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                headerText('Artistes'),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text(
                    'View More',
                    style: TextStyle(color: Colors.white38),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2 * Responsive.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                albumArt('Mario Senesi', 'assets/images/Art4.jpg'),
                albumArt('Jamie Sally', 'assets/images/Art5.jpg'),
                albumArt('Kentucky', 'assets/images/Art1.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column albumArt(String name, String imageUrl) {
    return Column(
      children: [
        SizedBox(
            height: 90.0,
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                  ),
                ),
                child: Image.asset(imageUrl))),
        SizedBox(
          height: 0.9 * Responsive.heightMultiplier,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget quickLink(String text, IconData icon, function) {
    return GestureDetector(
      onTap: function,
      child: Column(
        children: [
          neuButton(icon, function, size: 9.5),
          SizedBox(
            height: 0.7 * Responsive.heightMultiplier,
          ),
          Text(
            text,
            style: GoogleFonts.lato(color: Colors.white),
          )
        ],
      ),
    );
  }

  Padding headerText(String text) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          GradientText(
            text,
            style: GoogleFonts.lato(
                fontSize: 3 * Responsive.textMultiplier,
                fontWeight: FontWeight.w700),
            gradient: redAmberGradient,
          )
        ],
      ),
    );
  }
}
