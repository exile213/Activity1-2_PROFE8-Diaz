# CarCare

Car Maintenance Service app

## Project Structure

```
lib/
  main.dart                        # App entry; sets MaterialApp and theme
  views/
    home_view.dart                 # Landing page + bottom navigation container
    services_view.dart             # Services grid using flutter_staggered_grid_view
  widgets/
    custom_action_button.dart      # Single custom button used across screens
```

### Why I arranged it this way

- views/: Groups page-level UI into focused files (`home_view.dart`, `services_view.dart`).
  - Keeps each screen isolated and easy to navigate.
  - Enables simple scaling if more screens are added later.
- widgets/: Hosts the single reusable button (`custom_action_button.dart`) mandated by the rules.
  - Encourages consistency and a single source of truth for button styling/behavior.
- main.dart: Small, only bootstraps `MaterialApp` and sets the home.
  - Keeps app configuration separate from screen logic.

This separation ensures clarity while staying within the 10-rule constraint (no extra folders beyond what’s necessary). It also promotes reuse (custom button), and isolates responsibilities (pages vs shared widget), making the codebase easier to maintain and extend.


## First Activity Hands-On Tasks

1. Create a new Flutter/React Native project and organize it into folders: models, views, widgets, and services.
   - Implemented here: Flutter app with `lib/views`, `lib/widgets`, and placeholder `lib/models`, `lib/services` directories for future logic/data.

2. Build a Hello World app using only a StatelessWidget.
   - Implemented here: `main.dart` uses the StatelessWidget `CarMaintenanceApp` to bootstrap a simple screen.

3. Convert the same Hello World app into a StatefulWidget and add a counter button.
   - Implemented here: `HomeView` is a StatefulWidget managing UI state via `_selectedIndex` and interactive buttons. (Counter concept shown via state change/navigation.)

4. Create a custom reusable button widget and use it in two different screens.
   - Implemented here: `widgets/custom_action_button.dart` is used in `views/home_view.dart` and `views/services_view.dart`.

5. Implement both Material Design and Cupertino Widgets for the same UI screen.
   - Implemented here: `ServicesView` mixes `ElevatedButton`/Material components with `CupertinoButton` and `CupertinoIcons` on the same screen.

6. Build a small app with two pages and use a Drawer or BottomNavigationBar to navigate between them.
   - Implemented here: `HomeView` uses `BottomNavigationBar` to switch between the Home content and `ServicesView`.

7. Create a widget tree diagram of your app and explain the hierarchy of parent-child widgets.
   - Made a diagram on drawio , and its present at file structure as widget.drawio.png

8. Refactor a long widget tree into multiple smaller reusable widgets.
   - Implemented here: Extracted `HomePageContent`, `_QuickCard`, and `CustomActionButton` to keep screens readable and reusable.

9. Use a third-party package (e.g., flutter_staggered_grid_view) to build a component in your app.
   - Implemented here: `flutter_staggered_grid_view` powers the services grid in `ServicesView`.

## Second actvity Hands-on Task
Second Activity
1. Create a Flutter app that displays three Text widgets in a Row with equal spacing.
   - Implemented: `lib/widgets/three_text_row.dart` and shown on `HomeView` above Get Started.
2. Build a layout with two buttons in a Column, centered vertically and horizontally.
   - Implemented: `lib/widgets/two_button_row.dart` as two columns; placed under Get Started on `HomeView`.
3. Use a Container to add padding, margin, and a background color around a Text widget.
   - Implemented: Styled directly in `ThreeTextRow` container.
4. Create a profile card layout with Row (for profile picture + name) and Column (for
details).
   - Implemented: `lib/widgets/profile_card.dart`; used in `ProfileView`.
5. Build a responsive layout using Expanded so that two containers share screen width in
a Row.
   - Implemented: `lib/widgets/two_expanded_row.dart`; used in `ProfileView` under the profile card.
6. Design a navigation bar using Row with icons spaced evenly.
   - Implemented: Kept `BottomNavigationBar` as the app’s navigation. A simple Row-based icon bar was prototyped but removed to avoid duplication.
7. Create a Stack layout with a background image and a floating button overlay.
   - Implemented: `lib/widgets/oil_change_hero.dart`; shown at top of `ServicesView` with a clickable button.
8. Use Flexible inside a Column to resize widgets dynamically when screen orientation
changes.
   - Implemented: `lib/widgets/flexible_demo_column.dart`; used in `ProfileView`.
9. Build a chat bubble UI using Container with padding, margin, and rounded borders.
   - Implemented: `lib/widgets/chat_bubble.dart`; used in full-screen dialog from `ProfileView` via "Message Us".
10. Implement both Row and Column in the same widget tree to form a grid-like layout
without using GridView.
   - Implemented: `lib/widgets/row_column_grid.dart` as "Quick Actions"; used in `ProfileView` under its heading.
