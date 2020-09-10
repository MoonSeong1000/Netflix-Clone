import 'package:flutter/material.dart';
import 'package:netflix_clone/model/model_movie.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;

  BoxSlider({this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                '지금 뜨는 콘텐'
            ),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: makeBoxImages(movies),
              ),
            )
          ],
        )
    );
  }
}

List<Widget> makeBoxImages(List<Movie> movies) {
  List<Widget> result = [];
  for (var i = 0; i < movies.length; i++) {
    result.add(InkWell(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Align(
                alignment: Alignment.centerLeft,
                child:Image.asset('images/' + movies[i].poster)
              )
          )
      ),
    ));
  }
  return result;
}