
# Efsel_w_3eesh – Movie Library App

A Flutter-based movie library application that allows users to browse, search, filter, and sort movies with a clean UI. The app supports **light/dark themes**, **grid/list views**, and interactive movie cards with ratings, genres, and discounts.

---

## Features

- **Light/Dark Theme Toggle**  
  Switch between light and dark mode using the brightness icon in the app bar.

- **Grid/List View Toggle**  
  Display movies in either a grid or list layout.

- **Search Functionality**  
  Search movies by title or genre.

- **Filter by Origin**  
  Filter movies by *Indian*, *Foreign*, or *All* categories.

- **Sort by Rating**  
  Sort movies from **High → Low** rating.

- **Movie Cards**  
  Each card displays:
    - Poster image
    - Title & genre
    - Rating badge 
    - Year badge 
    - Discount badge (interactive)

---

## Project Structure

```
lib/
│── main.dart          # Entry point, sets up MaterialApp & theme
│── home_page.dart     # Home screen with search, filters, sorting, and layout toggle
│── movie.dart         # Movie model class & movie list
│── movie_card.dart    # UI widget for displaying movie details
```

---

## Getting Started

### Prerequisites
- Install Flutter SDK
- Ensure you have Dart installed
- Emulator or physical device for testing

### Installation
1. Clone the repository:
   ```bash
   git clone (https://github.com/hagarabseed/Efsel_w_3eesh.git)
   ```
2. Navigate to the project folder:
   ```bash
   cd Efsel_w_3eesh
   ```
3. Run the app:
   ```bash
   flutter run
   ```

---

## Assets

Movie posters are stored in the `assets/` directory.  
Make sure to declare them in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/3idiots.jpg
    - assets/interstellar.jpg
    - assets/Enola Holmes.png
    - assets/Wonder.png
    - assets/Hichki.jpeg
    - assets/Dangal.png
    - assets/Bajragi Bhaijaan.jpg
    - assets/Whiplash.png
    # Add all other movie images here
```

---

## Future Improvements

- Add **favorite/bookmark functionality**
- Integrate **API for dynamic movie data**
- Implement **user authentication**
- Add **movie details page with trailers**

---
