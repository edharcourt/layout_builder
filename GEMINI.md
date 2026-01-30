# Gemini Code Assistant Context

## Project Overview

This is a Flutter project designed to demonstrate responsive UI development. The core of the application is the `ResponsiveProfileCard` widget, which adapts its layout based on the available screen width using Flutter's `LayoutBuilder`.

-   **Narrow Layout (<600 pixels):** Displays a user avatar, name, description, and a "Follow" button in a vertical `Column`.
-   **Wide Layout (>600 pixels):** Rearranges the same elements into a horizontal `Row` for wider screens.

The project is a simple, single-screen application that serves as a practical example of building adaptive layouts.

## Building and Running

This is a standard Flutter project. Use the following commands to interact with it:

-   **Run the app (debug mode):**
    ```bash
    flutter run
    ```

-   **Run tests:**
    ```bash
    flutter test
    ```

-   **Build a release version:**
    ```bash
    flutter build
    ```

## Development Conventions

-   **Linting:** The project uses the `flutter_lints` package to enforce a standard set of coding practices. The configuration can be found in `analysis_options.yaml`.
-   **Structure:** The main application logic is separated into widgets. In `lib/responsive_profile_card.dart`, the UI is broken down into helper methods (`_buildAvatar`, `_buildContent`) to improve readability and maintainability of the main `build` method.
-   **State Management:** For this simple example, state management is implicit within the stateless widgets.
