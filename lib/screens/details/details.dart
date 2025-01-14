import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;

  const DetailsScreen(
      { required Key key,
        required this.name,
        required this.description,
        required this.bannerurl,
        required this.posterurl,
        required this.vote,
        required this.launch_on})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: Text( '⭐ Average Rating - ' + vote)),
              ])),
          const SizedBox(height: 15),
          Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                    name ?? 'Not Loaded',  style: const TextStyle(fontSize: 24),)),
          Container(
              padding: const EdgeInsets.only(left: 10),
              child:
              Text( 'Releasing On - ' + launch_on, style: const TextStyle(fontSize: 14),)),
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Text( description,  style: const TextStyle(fontSize: 18),)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
