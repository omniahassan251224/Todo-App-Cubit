
import 'package:flutter/material.dart';
import 'detailsScreen.dart';

void main() {
  runApp(const MovieListApp());
}

class MovieListApp extends StatelessWidget {
  const MovieListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie List App',
      home: HomeScreen(),
    );
  }
}

class Movie {
   String title;
   String imageUrl;
   String description;

  Movie({
    required this.title,
    required this.imageUrl,
    required this.description,
  });
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Movie> movies = [
    Movie(
      title: 'Inception',
      imageUrl:
          'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba',
      description:
          'A science fiction movie about dreams within dreams.',
    ),
    Movie(
      title: 'Interstellar',
      imageUrl:
          'https://images.unsplash.com/photo-1440404653325-ab127d49abc1',
      description:
          'A team of astronauts travels through a wormhole to save humanity.',
    ),
    Movie(
      title: 'The Dark Knight',
      imageUrl:
          'https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c',
      description:
          'Batman faces the Joker in a battle for Gotham City.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(movies[index].imageUrl),
              ),
              title: Text(movies[index].title),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      movie: movies[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}


  