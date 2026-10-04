import 'package:flutter/material.dart';
import 'package:webmedia_project_297_64g_sadi/loggeduser.dart';
import 'package:webmedia_project_297_64g_sadi/login.dart';
import 'package:webmedia_project_297_64g_sadi/subscription.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = const [
      {
        'title': 'Trending',
        'movies': [
          {'title': 'Batman', 'image': 'assets/posters/The_BatMan.png'},
          {'title': 'Spider-Man', 'image': 'assets/posters/SpiderMan.png'},
          {
            'title': 'Avengers',
            'image': 'assets/posters/Avengers_Infinite_War.png',
          },
          {'title': 'Batman', 'image': 'assets/posters/The_BatMan.png'},
          {'title': 'Spider-Man', 'image': 'assets/posters/SpiderMan.png'},
          {
            'title': 'Avengers',
            'image': 'assets/posters/Avengers_Infinite_War.png',
          },
          {'title': 'Batman', 'image': 'assets/posters/The_BatMan.png'},
          {'title': 'Spider-Man', 'image': 'assets/posters/SpiderMan.png'},
          {
            'title': 'Avengers',
            'image': 'assets/posters/Avengers_Infinite_War.png',
          },
          {'title': 'Batman', 'image': 'assets/posters/The_BatMan.png'},
          {'title': 'Spider-Man', 'image': 'assets/posters/SpiderMan.png'},
          {
            'title': 'Avengers',
            'image': 'assets/posters/Avengers_Infinite_War.png',
          },
        ],
      },
      {
        'title': 'Popular',
        'movies': [
          {'title': 'Inception', 'image': 'assets/posters/Interstellar.png'},
          {
            'title': 'The Dark Knight',
            'image': 'assets/posters/TheDarkNight.png',
          },
          {'title': 'Inception', 'image': 'assets/posters/Inception.png'},
          {'title': 'Inception', 'image': 'assets/posters/Interstellar.png'},
          {
            'title': 'The Dark Knight',
            'image': 'assets/posters/TheDarkNight.png',
          },
          {'title': 'Inception', 'image': 'assets/posters/Inception.png'},
          {'title': 'Inception', 'image': 'assets/posters/Interstellar.png'},
          {
            'title': 'The Dark Knight',
            'image': 'assets/posters/TheDarkNight.png',
          },
          {'title': 'Inception', 'image': 'assets/posters/Inception.png'},
          {
            'title': 'The Dark Knight',
            'image': 'assets/posters/TheDarkNight.png',
          },
          {'title': 'Inception', 'image': 'assets/posters/Inception.png'},
          {'title': 'Inception', 'image': 'assets/posters/Interstellar.png'},
          {
            'title': 'The Dark Knight',
            'image': 'assets/posters/TheDarkNight.png',
          },
          {'title': 'Inception', 'image': 'assets/posters/Inception.png'},
        ],
      },
      {
        'title': 'Action',
        'movies': [
          {
            'title': 'Heart of The Beast',
            'image': 'assets/posters/HeartOfTheBeast.png',
          },
          {'title': 'The Odyssy', 'image': 'assets/posters/TheOdyssy.png'},
          {'title': 'John Wick', 'image': 'assets/posters/TheUprising.png'},
          {
            'title': 'Heart of The Beast',
            'image': 'assets/posters/HeartOfTheBeast.png',
          },
          {'title': 'The Odyssy', 'image': 'assets/posters/TheOdyssy.png'},
          {'title': 'John Wick', 'image': 'assets/posters/TheUprising.png'},
          {
            'title': 'Heart of The Beast',
            'image': 'assets/posters/HeartOfTheBeast.png',
          },
          {'title': 'The Odyssy', 'image': 'assets/posters/TheOdyssy.png'},
          {'title': 'John Wick', 'image': 'assets/posters/TheUprising.png'},
          {
            'title': 'Heart of The Beast',
            'image': 'assets/posters/HeartOfTheBeast.png',
          },
          {'title': 'The Odyssy', 'image': 'assets/posters/TheOdyssy.png'},
          {'title': 'John Wick', 'image': 'assets/posters/TheUprising.png'},
        ],
      },
    ];

    // Advertisement
    Widget advertisement() {
      return Container(
        height: 280,
        width: double.infinity,
        margin: const EdgeInsets.all(16),
        child: Image.network(
          'assets/posters/spiderAd.png',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            print('IMAGE ERROR: $error');
            return const Center(
              child: Text(
                'IMAGE NOT FOUND',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            );
          },
        ),
      );
    }

    // This creates one horizontal movie section
    Widget movieSection(String title, List<Map<String, dynamic>> movies) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              title,
              style: const TextStyle(
                color: Color.fromARGB(255, 147, 146, 146),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 230,

            // This makes THIS section horizontally scrollable
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: movies.length,

              itemBuilder: (context, index) {
                final movie = movies[index];

                return Container(
                  width: 140,
                  margin: const EdgeInsets.only(right: 12),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),

                          child: Image.network(
                            movie['image'],
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        movie['title'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 90, 88, 88),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('My Movies', style: TextStyle(color: Colors.white)),
        ),

        // The entire page scrolls vertically
        body: ListView.builder(
          itemCount: categories.length,

          itemBuilder: (context, index) {
            final category = categories[index];

            // Create one horizontal section
            return movieSection(category['title'], category['movies']);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(240, 0, 0, 0),
        foregroundColor: Colors.red,
        elevation: 8.0,
        shadowColor: const Color.fromARGB(53, 31, 30, 30),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 40, // fixed width for search bar
              decoration: BoxDecoration(
                color: Color.fromARGB(
                  198,
                  108,
                  103,
                  103,
                ), // background color of input area
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: const TextStyle(color: Colors.red),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.red),
                ),
                style: const TextStyle(color: Colors.red),
                onChanged: (value) {
                  print("Searching for: $value");
                },
              ),
            ),
          ],
        ),
        centerTitle: true, // ensures Row stays centered
      ),

      endDrawer: Drawer(
        backgroundColor: const Color.fromARGB(238, 37, 37, 37),
        width: 200,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Subscription()),
                );
              },
              child: Text("Subscriptions"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(197, 5, 5, 5),
                backgroundColor: const Color.fromARGB(255, 225, 15, 0),
              ),
            ),

            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  // MaterialPageRoute(builder: (context) => const Login()),
                  MaterialPageRoute(builder: (context) => const Loggeduser()),
                );
              },
              icon: const Icon(Icons.login),
              color: Colors.red,
            ),
          ],
        ),
      ),

      body: Container(
        color: const Color.fromARGB(255, 18, 18, 18),

        child: ListView(
          children: [
            advertisement(),

            ...categories.map((category) {
              return movieSection(category['title'], category['movies']);
            }),
          ],
        ),
      ),
    );
  }
}
