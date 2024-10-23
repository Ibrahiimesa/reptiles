import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reptils_bio/model/reptil_model.dart';
import 'package:reptils_bio/widget/custom_widget.dart';

import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearching = false;
  String searchQuery = '';

  List<ReptileModel> displayedReptilesList = reptilesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: const Color(0xFFFDFDF6),
          pinned: false,
          title: isSearching
              ? TextField(
                  onChanged: (query) {
                    setState(() {
                      if (query.isEmpty) {
                        displayedReptilesList = reptilesList;
                      } else {
                        displayedReptilesList = reptilesList
                            .where((reptile) => reptile.name
                                .toLowerCase()
                                .contains(query.toLowerCase()))
                            .toList();
                      }
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search Reptiles',
                    filled: true,
                    fillColor: Color(0xFFFDFDF6),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ))
              : Text(
                  "Reptiles",
                  style: GoogleFonts.pacifico(color: Colors.blueGrey),
                ),
          actions: <Widget>[
            isSearching
                ? IconButton(
                    icon: const Icon(Icons.cancel, color: Colors.blueGrey),
                    onPressed: () {
                      setState(() {
                        isSearching = false;
                        displayedReptilesList = reptilesList;
                      });
                    })
                : IconButton(
                    icon: const Icon(Icons.search, color: Colors.blueGrey),
                    onPressed: () {
                      setState(() {
                        isSearching = true;
                      });
                    },
                  ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final reptile = displayedReptilesList[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailScreen.routeName,
                      arguments: reptile,
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(reptile.image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.black26.withOpacity(0.5),
                        ),
                        child: Text(
                          reptile.name,
                          style: GoogleFonts.titilliumWeb(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            childCount: displayedReptilesList.length,
          ),
        ),
        if (displayedReptilesList.isEmpty)
          SliverToBoxAdapter(
            child: Center(
              child: TextBody(
                text: "Not Found",
                textAlign: TextAlign.center,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                textColor: Colors.black,
              ),
            ),
          ),
      ]),
    );
  }
}
