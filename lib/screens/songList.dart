import 'package:eloquent_player/utils/neo_widgets.dart';
import 'package:eloquent_player/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SongsList extends StatelessWidget {
  const SongsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0XFF2e2e2e),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  neuButton(Icons.arrow_back, () => Navigator.pop(context)),
                  Text(
                    'All Songs',
                    style:
                        GoogleFonts.lato(color: Colors.white, fontSize: 18.0),
                  ),
                  neuButton(Icons.search, () => null),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Play All',
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontSize: 20.0),
                ),
                Spacer(
                  flex: 8,
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.random,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 1.1 * Responsive.heightMultiplier,
            ),
            ListView(
              primary: false,
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    'New',
                    style:
                        GoogleFonts.lato(fontSize: 21.0, color: Colors.white),
                  ),
                  subtitle: Text('Folder Name',
                      style: GoogleFonts.lato(
                          fontSize: 14.0,
                          color: Colors.white38,
                          fontStyle: FontStyle.italic)),
                  trailing: neuButton(
                      Icons.more_horiz,
                      () =>
                          MaterialPageRoute(builder: (context) => SongsList())),
                ),
                ListTile(
                  title: Text(
                    'New',
                    style:
                        GoogleFonts.lato(fontSize: 21.0, color: Colors.white),
                  ),
                  subtitle: Text('Folder Name',
                      style: GoogleFonts.lato(
                          fontSize: 14.0,
                          color: Colors.white38,
                          fontStyle: FontStyle.italic)),
                  trailing: neuButton(Icons.more_horiz, () => null),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
