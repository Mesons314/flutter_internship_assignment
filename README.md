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
🎬 [Watch the Demo Video](https://drive.google.com/drive/folders/1uB7YlP3XekbSCFrSBQCM-VgedemJQpHA?usp=drive_link)

---

### 1. Clone the repository
   ```bash
   git clone https://github.com/Mesons314/flutter_internship_assignment.git
```
### 2.Navigate to project directory
```bash
   cd flutter_internship_assignment 
```
### 3.Install dependencies
```bash
   flutter pub get
   ```
### 4.Run the app
```bash
   flutter run
```