# flutter_challenge

Flutter Article List Application

Overview:

This Flutter application lists articles fetched from a mock API and provides detailed views for each article. The application demonstrates skills in UI design, API integration, state management, routing, and the use of various Flutter libraries. Additionally, a search feature has been implemented to enhance user experience.

Features:

> Clean and modern UI for listing articles and displaying article details.

> Integration with a mock API to fetch articles using Retrofit and Dio.

> State management using hooks_riverpod.

> Navigation using auto_route.

> Connectivity handling with connectivity_plus and internet_connection_checker.

> Image handling using cached_network_image.

> Modular project structure following the Single Responsibility Principle.

> Extra functionality with a search feature to filter articles.

Getting Started
Prerequisites:

Flutter SDK: Install Flutter
Dart SDK: Included with Flutter

Installation

Clone the repository:
git clone https://github.com/yourusername/flutter-article-list.git
cd article_list_app

Install dependencies:
flutter pub get

Run the app:
flutter run

Project Structure:

> lib/controllers: Global code for push handling, connectivity status, etc.

> lib/data: Data models, providers, and network code.

> lib/data/model: Data model mappings with auto-generation tags.

> lib/data/providers: State management, listeners, and data loading.

> lib/data/remote: Networking and API definitions with auto-generation tags and interceptors.

> lib/foundation: Helper code, error handling, constants, extensions, validation rules for forms.

> lib/gen: Assets auto-generated code.

> lib/resources: Styles, themes, and flavors.

> lib/routes: App routing code and auto-generated code.

> lib/ui: All UI components, including screens, views, and modals.

> lib/app.dart: Application initialization.

> lib/app_config.dart: Application configurations.

> lib/main.dart: Application entry point.


dependencies:

  flutter:
    sdk: flutter
  dio: ^5.2.0
  retrofit: ^4.1.0
  hooks_riverpod: ^2.0.0
  auto_route: ^6.0.0
  connectivity_plus: ^6.0.3
  internet_connection_checker: ^1.0.0+1
  cached_network_image: ^3.2.3
  flutter_hooks: ^0.18.4
  cupertino_icons: ^1.0.6
  pretty_dio_logger: ^1.2.0
  json_annotation: ^4.9.0
  gap: ^3.0.1
  intl: ^0.19.0
  flutter_gen: ^5.5.0+1
  photo_view: ^0.15.0
  flutter_svg: ^2.0.10+1
  shimmer: ^3.0.0
  timeago: ^3.6.1

dev_dependencies:

  flutter_test:
    sdk: flutter
  build_runner: ^2.3.3
  json_serializable: ^6.6.2
  retrofit_generator: ^6.0.0
  auto_route_generator: ^6.0.0
  flutter_lints: ^2.0.1
  analyzer: ^5.13.0
  flutter_gen_runner: ^5.5.0+1


Additional Features:

Search Functionality
A search feature is implemented to allow users to filter articles based on keywords. This enhances the user experience by making it easier to find specific articles.

API:

The application fetches articles from the following mock API:
[Mock API](https://mocki.io/v1/dbb3e648-358f-4a53-88fb-6dd9a67d4137)

Design:

The UI design is based on the provided Figma design, ensuring a clean and modern look:
[Figma design](https://www.figma.com/design/O5PRl1FsvKXLfHVPELGZ6d/Flutter-Challenge?node-id=0-1&t=usyA8qBHxOhewgwg-0)


Connectivity Handling:

The app handles connectivity changes and displays a message when the device is offline, ensuring a smooth user experience.

Submission:

The complete source code is available in this public GitHub repository. Follow the instructions in this README to set up and run the project. The project is well-structured and follows best practices in Flutter development.
