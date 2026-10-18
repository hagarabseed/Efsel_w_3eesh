import 'package:flutter/material.dart';
import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onToggleTheme;
  const HomePage({Key? key, required this.onToggleTheme}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = false;
  String searchText = "";
  int discount = 20;

  String originFilter = "All";
  String sortOrder = "None";

  @override
  Widget build(BuildContext context) {
    var filteredMovies = movies.where((m) {
      final query = searchText.toLowerCase();
      return m.title.toLowerCase().contains(query) ||
          m.genre.toLowerCase().contains(query);
    }).toList();

    if (originFilter == "Indian") {
      filteredMovies = filteredMovies.where((m) =>
          ["3 Idiots","Bajrangi Bhaijaan","Dangal","Hichki","Taare Zameen Par"]
              .contains(m.title)).toList();
    } else if (originFilter == "Foreign") {
      filteredMovies = filteredMovies.where((m) =>
      !["3 Idiots","Bajrangi Bhaijaan","Dangal","Hichki","Taare Zameen Par"]
          .contains(m.title)).toList();
    }

    // 📊 Sort by rating
    if (sortOrder == "High→Low") {
      filteredMovies.sort((a, b) => b.rating.compareTo(a.rating));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Library"),
        actions: [
          IconButton(
            icon: Icon(isGrid ? Icons.list : Icons.grid_view),
            onPressed: () => setState(() => isGrid = !isGrid),
          ),
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) => setState(() => searchText = value),
              decoration: InputDecoration(
                hintText: "Search movies...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  value: originFilter,
                  items: ["All","Indian","Foreign"]
                      .map((f) => DropdownMenuItem(value: f, child: Text(f)))
                      .toList(),
                  onChanged: (val) => setState(() => originFilter = val!),
                ),
                DropdownButton<String>(
                  value: sortOrder,
                  items: ["None","High→Low"]
                      .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                      .toList(),
                  onChanged: (val) => setState(() => sortOrder = val!),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          Expanded(
            child: filteredMovies.isEmpty
                ? const Center(child: Text("No movies found"))
                : isGrid
                ? GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 0.62,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) => MovieCard(
                movie: filteredMovies[index],
                globalValue: "$discount%",
                onTapGlobal: () => setState(() => discount--),
              ),
            )
                : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) => Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 500),
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: MovieCard(
                    movie: filteredMovies[index],
                    globalValue: "$discount%",
                    onTapGlobal: () => setState(() => discount--),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}