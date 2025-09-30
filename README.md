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

### Why arranged this way

- views/: Groups page-level UI into focused files (`home_view.dart`, `services_view.dart`).
  - Keeps each screen isolated and easy to navigate.
  - Enables simple scaling if more screens are added later.
- widgets/: Hosts the single reusable button (`custom_action_button.dart`) mandated by the rules.
  - Encourages consistency and a single source of truth for button styling/behavior.
- main.dart: Small, only bootstraps `MaterialApp` and sets the home.
  - Keeps app configuration separate from screen logic.

This separation ensures clarity while staying within the 10-rule constraint (no extra folders beyond what’s necessary). It also promotes reuse (custom button), and isolates responsibilities (pages vs shared widget), making the codebase easier to maintain and extend.

