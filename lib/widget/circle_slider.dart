import 'package:flutter/material.dart';
import 'package:netflix_clone/model/model_movie.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;

  CircleSlider({this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              '미리보기'
          ),
          Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: makeCircleImages(movies),
              )
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(List<Movie> movies) {
  List<Widget> result = [];
  for (var i = 0; i < movies.length; i++) {
    result.add(InkWell(
        onTap: () {},
        child: Container(
            padding: EdgeInsets.only(right: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                    backgroundImage: AssetImage('images/' + movies[i].poster),
                    radius: 48)
            )
        )
    ));
  }
  return result;
}