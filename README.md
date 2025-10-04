# Bookly App

Bookly is a Flutter-based mobile application that allows users to discover, search, and preview a vast collection of books. It utilizes the Google Books API to fetch book data and presents it in a clean, intuitive, and responsive user interface.

## Features

- **Home Feed:** A dynamic home screen featuring horizontally scrolling "Featured Books" and a vertical list of the "Newest Books".
- **Book Details:** Comprehensive detail screens for each book, displaying the cover, title, author(s), ratings, and a descriptive summary.
- **Similar Books:** A "You can also like" section on the book details page that suggests books from the same category.
- **Powerful Search:** A dedicated search page to find books by keywords, with results displayed in real-time.
- **Book Preview:** The ability to open a web-based preview of the book directly within the app using `webview_flutter`.
- **Localization:** Full support for both English and Arabic, with an easy-to-use language switcher in the drawer.
- **Theme Customization:** Seamlessly switch between a sleek dark mode and a clean light mode to suit user preference.
- **Responsive UI:** Built with shimmer effects for loading states, providing a smooth user experience while data is being fetched.
- **Error Handling:** Graceful error handling with user-friendly messages for network issues or API failures.

##  Tech Stack & Architecture

This project follows the principles of Clean Architecture, organized by feature, to ensure scalability and maintainability.

- **Framework:** Flutter
- **State Management:** BLoC / Cubit (`flutter_bloc`)
- **Architecture:** Feature-First Clean Architecture
- **Dependency Injection:** `get_it` Service Locator
- **Networking:** `dio` for handling HTTP requests to the Google Books API
- **Routing:** `go_router` for declarative navigation
- **Localization:** `easy_localization` for multi-language support (English & Arabic)
- **UI Libraries:**
    - `cached_network_image`: For loading and caching network images.
    - `shimmer`: To create loading skeleton screens.
    - `carousel_slider`: For the featured books carousel.
    - `webview_flutter`: For in-app book previews.
    - `flutter_svg`: For rendering SVG assets.

##  Project Structure

The codebase is organized into a feature-based structure to promote separation of concerns and modularity.

```
lib/
├── Features/
│   ├── home/         # Home screen, book details, and similar books
│   │   ├── data/       # Repositories and Data Models (BookModel)
│   │   └── presentation/ # UI (Views, Widgets) and State Management (Cubits)
│   ├── search/       # Search functionality
│   │   ├── data/
│   │   └── presentation/
│   └── splash/       # Splash screen
│       └── presentation/
├── core/
│   ├── errors/       # Custom failure and error handling classes
│   ├── shared_widgets/ # Reusable widgets across features
│   ├── theme/        # Light/Dark theme configuration and ThemeCubit
│   └── utils/        # Core utilities (API service, router, assets, DI)
└── main.dart       # App entry point
```

##  Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK installed on your machine.
- An IDE like VS Code or Android Studio.

### Installation

1.  Clone the repository:
    ```sh
    git clone https://github.com/OmarGamalDev/bookly_app.git
    ```
2.  Navigate to the project directory:
    ```sh
    cd bookly_app
    ```
3.  Install the dependencies:
    ```sh
    flutter pub get
    ```
4.  Run the app on your preferred emulator or physical device:
    ```sh
    flutter run