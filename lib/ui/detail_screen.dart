import 'package:flutter/material.dart';
import 'package:reptils_bio/model/reptil_model.dart';
import 'package:reptils_bio/ui/webview_screen.dart';
import 'package:reptils_bio/widget/custom_widget.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail_screen';

  final ReptileModel reptile;

  const DetailScreen({super.key, required this.reptile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(reptile.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFFDFDF6),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 200, width: double.infinity),
                  TextHeading(
                    text: reptile.name,
                    fontSize: 32,
                    textColor: Colors.black,
                    textAlign: TextAlign.justify,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 10, width: double.infinity),
                  CustomContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBody(
                          text: 'Scientific Name: ${reptile.scientificName}',
                          textColor: Colors.black,
                          textAlign: TextAlign.justify,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        TextBody(
                          text: 'Average Life Span: ${reptile.lifeSpan}',
                          textColor: Colors.black,
                          textAlign: TextAlign.justify,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        TextBody(
                          text: 'Size: ${reptile.size}',
                          textColor: Colors.black,
                          textAlign: TextAlign.justify,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        TextBody(
                          text: 'Weight: ${reptile.weight}',
                          textColor: Colors.black,
                          textAlign: TextAlign.justify,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                    width: double.infinity,
                  ),
                  TextHeading(
                    text: 'What is the ${reptile.name}?',
                    fontSize: 20,
                    textColor: Colors.black,
                    textAlign: TextAlign.justify,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  CustomContainer(
                    child: TextBody(
                      text: reptile.about,
                      textColor: Colors.black,
                      textAlign: TextAlign.justify,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                    width: double.infinity,
                  ),
                  TextHeading(
                    text: 'Habitat',
                    fontSize: 20,
                    textColor: Colors.black,
                    textAlign: TextAlign.justify,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  CustomContainer(
                    child: TextBody(
                      text: reptile.habitat,
                      textColor: Colors.black,
                      textAlign: TextAlign.justify,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                    width: double.infinity,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, ReptileWebView.routeName,
                          arguments: reptile.link);
                    },
                    child: const Row(
                      children: [
                        Text(
                          'Read More',
                          style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              color: Colors.blueGrey),
                        ),
                        Icon(
                          Icons.arrow_outward,
                          size: 16,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.50),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
