import 'package:cenimabooking/screens/details/movie-about.dart';
import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final List trending;
  const MoviePoster({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MoviesAbout(
                                      name: trending[index]['title'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['poster_path'],
                                      description: trending[index]['overview'],
                                      vote: trending[index]['vote_average']
                                          .toString(),
                                      launch_on: trending[index]
                                          ['release_date'],
                                      numOfTarings: trending[index]
                                              ['vote_count']
                                          .toString(),
                                      key: key,
                                    )));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(7),
                        width: 170,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            trending[index]['poster_path']),
                                    fit: BoxFit.contain),
                              ),
                              height: 200,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              trending[index]['title'] != null
                                  ? trending[index]['title']
                                  : 'Loading',
                              style: TextStyle(fontSize: 15),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
