# Pen Flutter App  

This Flutter project is designed to help students and doctors manage and view their schedules efficiently. Below is a detailed explanation of the project structure and its features. 
## Demo and  Story Behind the Project

You can view a demo of the app:  https://www.linkedin.com/posts/ahmed-mohamed-401886240_flutter-project-experience-collaborative-activity-7208124393758109697-oYLE?utm_source=share&utm_medium=member_desktop


## Features
all the project is ui only
- **About Us:** A simple UI page that provides information about the team members who worked on this project.
- **Start Screen:** The onboarding page that introduces new users to the app.
- **Login Page:** A login interface (UI only, no authentication implemented).
- **Home Page:** 
  - **For Students:** Displays their schedule.
  - **For Doctors:** Displays their schedule with some editing capabilities.
- **Search Page:** Allows users to search for various items (UI only).
- **Material Screen:** 
  - **For Students:** Shows lectures or sections, which they cannot edit.
  - **For Doctors:** Allows editing of lectures or sections.
- **Layout Screen:** Enables toggling between all the screens in the app.

## Project Structure
```
lib/
├── main.dart
├── assets/
│ └── images/
└── modules/
├── about_of_us/
│ └── aboutofus_screen.dart
├── HomeScreen/
│ ├── HomeScreen.dart
│ ├── myList.dart
│ └── tables.dart
├── layoutScreen/
│ └── layoutscreen.dart
├── Lectures_sections/
│ ├── Lec_sec.dart
│ └── lecscreen.dart
├── login/
│ ├── forgetpassword.dart
│ └── loginscreen.dart
├── materialscreen/
│ └── materialscreen.dart
├── searchscreen/
│ └── searchscreen.dart
├── startscreen/
│ └── startscreen.dart
└── widgets/
└── onboarding.dart
```

## Getting Star

## Getting Started

### Prerequisites

- Flutter SDK
- Dart
- A code editor like VS Code or Android Studio

### Installation

1. Clone the repository:
   ```sh
   git clone <https://github.com/AHMED9937/flutterProject>
