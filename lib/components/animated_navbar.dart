import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AnimatedNavBar extends StatefulWidget {
  @override
  _AnimatedNavBarState createState() => _AnimatedNavBarState();
}

class _AnimatedNavBarState extends State<AnimatedNavBar> {
  String _selectedItem = 'idle';
  Color firstIconColour = Colors.white;
  Color secondIconColour = Colors.white54;
  Color thirdIconColour = Colors.white54;

  void selectionChanged(int index) {
    if (_selectedItem == 'idle' ||
        _selectedItem == 'fs_rv' ||
        _selectedItem == 'fss_rv') {
      switch (index) {
        case 0:
          return;

        case 1:
          setState(() {
            _selectedItem = 'fs';
          });
          break;
        case 2:
          setState(() {
            _selectedItem = 'fss';
          });
          break;
        default:
      }
    } else if (_selectedItem == 'fs' || _selectedItem == 'ss_rv') {
      switch (index) {
        case 0:
          setState(() {
            _selectedItem = 'fs_rv';
          });
          break;

        case 1:
          return;

        case 2:
          setState(() {
            _selectedItem = 'ss';
          });
          break;
        default:
      }
    } else {
      switch (index) {
        case 0:
          setState(() {
            _selectedItem = 'fss_rv2';
          });
          break;

        case 1:
          setState(() {
            _selectedItem = 'ss_rv';
          });
          break;
        case 2:
          return;

        default:
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.1,
      child: Stack(
        children: <Widget>[
          FlareActor(
            'assets/flare/NavBar2.flr',
            alignment: Alignment.center,
            fit: BoxFit.fitHeight,
            animation: _selectedItem,
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.25,
                  ),
                  child: InkWell(
                    onTap: () {
                      this.firstIconColour = Colors.white;
                      this.secondIconColour = Colors.white54;
                      this.thirdIconColour = Colors.white54;

                      selectionChanged(0);
                    },
                    child: Icon(
                      Icons.add_box,
                      color: this.firstIconColour,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    this.firstIconColour = Colors.white54;
                    this.secondIconColour = Colors.white;
                    this.thirdIconColour = Colors.white54;
                    selectionChanged(1);
                  },
                  child: Icon(Icons.list, color: this.secondIconColour),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.27,
                  ),
                  child: InkWell(
                    onTap: () {
                      this.firstIconColour = Colors.white54;
                      this.secondIconColour = Colors.white54;
                      this.thirdIconColour = Colors.white;
                      selectionChanged(2);
                    },
                    child: Icon(
                      Icons.inbox,
                      color: this.thirdIconColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
