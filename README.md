# RA Movie (Initial Name)

A modern, feature-rich Cinema Booking Application built with Flutter. This project demonstrates best practices in mobile development, featuring a scalable architecture, robust state management, and a polished UI.

## 🚀 Tech Stack

- **Framework:** [Flutter](https://flutter.dev/) 3.10+
- **Language:** Dart
- **State Management:** [Riverpod](https://riverpod.dev/) (with code generation) - For dependency injection and state management.
- **Routing:** [GoRouter](https://pub.dev/packages/go_router) - Declarative routing package.
- **Networking:** [Dio](https://pub.dev/packages/dio) + [Retrofit](https://pub.dev/packages/retrofit) - Type-safe HTTP client.
- **Code Generation:** [Freezed](https://pub.dev/packages/freezed) & [JSON Serializable](https://pub.dev/packages/json_serializable) - Immutable data classes and JSON parsing.
- **Responsive UI:** [Flutter ScreenUtil](https://pub.dev/packages/flutter_screenutil) - Adapting UI to different screen sizes.
- **UI Effects:** [Skeletonizer](https://pub.dev/packages/skeletonizer) - Loading shimmer effects.

## 🔗 Backend Service

This project is designed to work with the **Ratix Backend**. Ensure the backend is running for full functionality.

- **Repository:** [Ratix Backend](https://github.com/geraldiaditya/ratix-backend)

## ✨ Features

- **Authentication:**
  - Secure Login & Sign Up flows.
  - Token-based authentication with `flutter_secure_storage`.
- **Movie Discovery:**
  - Browse "Now Playing" and "Coming Soon" movies.
  - View detailed movie information.
- **Cinema Booking:**
  - **Cinema Location:** Find cinemas by city.
  - **Seat Selection:** Interactive seat layout with real-time availability.
  - **Ticket Management:** View booked tickets and history.
- **User Profile:**
  - Manage account settings and personal details.

## 🏗 Architecture

The project follows a **Feature-First + Layered Architecture** to ensure scalability and separation of concerns:

```
lib/src/
├── core/           # Core utilities, extensions, and router configuration
├── data/           # Data layer (DTOs, Datasources, Repositories Impl)
├── domain/         # Domain layer (Models, Repository Interfaces)
├── feature/        # Feature-specific UI and Controllers
│   ├── auth/
│   ├── cinema/
│   ├── home/
│   └── ...
├── provider/       # Riverpod Providers (Global & Feature-specific)
└── widget/         # Shared UI components
```

This structure ensures that features are encapsulated, while the core logic remains testable and maintainable.

## 🛠 Getting Started

### Prerequisites
- Flutter SDK 3.10 or higher
- Dart SDK

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/geraldiaditya/ra_movie.git
    cd ra_movie
    ```

2.  **Install Dependencies**
    ```bash
    flutter pub get
    ```

3.  **Code Generation**
    This project relies on code generation. Run the build runner to generate necessary files:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4.  **Run the Application**
    ```bash
    flutter run
    ```

## 📱 Screenshots

*(Add screenshots of your app here)*

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
