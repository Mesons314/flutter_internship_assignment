# 🏀 Flutter Developer Internship Assignment

## 📋 Objective
This Flutter assignment was developed as part of the **Flutter Developer Internship Shortlisting Process**.  
The goal of the project is to display a list of sports-related skills grouped by their proficiency levels — **Basic**, **Intermediate**, and **Advanced** — in a clean, horizontally scrollable user interface.

The data is parsed from a local JSON file and displayed dynamically. Each skill card shows an image and skill name for easy visual understanding.

---

## 🧠 Features
- ✅ Parses skill data dynamically from a local JSON file (`assets/skills.json`)
- ✅ Groups skills by their level — **Basic → Intermediate → Advanced**
- ✅ Displays each skill using a visually appealing **card layout**
- ✅ Implements **smooth horizontal scrolling** for each level
- ✅ Built with **responsive UI design** using a custom `SizeConfig` utility
- ✅ Maintains **clean code structure** with separation of concerns
- ✅ Optimized for both **small and large phone devices**

---

## 📂 Project Structure
```
 assets/
 ├── images/
 │   ├── png/
 │   └── svg/
 └── skills.json

 lib/
 ├── model/
 │   └── skill_model.dart
 ├── screens/
 │   └── list_screen.dart
 ├── utils/
 │   ├── color_palette.dart
 │   ├── size_config.dart
 │   └── skill_service.dart
 ├── widgets/
 │   ├── custom_text.dart
 │   ├── local_assets.dart
 │   └── skill_card.dart
 └── main.dart
 ```
---
##

## 🖥️ UI Preview
<p align="center">
  <img src="assets/images/png/Skills Level Screen .jpeg" alt="App UI" width="400"/>
</p>

---

## 🎥 Demo Video
[![Watch the Demo](https://drive.google.com/file/d/1Bfnt6lZcxslvqDHfaXJv5EyVamHtfg8o/view?usp=sharing)

---

### 1. Clone the repository
   ```bash
   https://github.com/Mesons314/flutter_internship_assignment.git

   Navigate to project directory

   cd flutter_internship_assignment 

   Install dependencies
   flutter pub get
   
   Run the app
   flutter run