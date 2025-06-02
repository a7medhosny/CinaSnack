# 🎬 CinaSnack - Movie & TV Series App

CinaSnack is a Flutter-based movie and TV series app built to explore and practice modern Flutter development techniques such as API integration, state management, and clean architecture principles.

## 🚀 Why I Built This
The primary goal of this app was to improve my API integration skills and experiment with powerful packages like:
- `retrofit`
- `json_serializable`
- Auto-generated code handling  
It also helped me apply best practices with `Cubit` for state management and `clean architecture` for organizing code.

## 🧩 Features

- 🏠 **Home Screen**: Displays popular and top-rated movies & TV series.
- 🎥 **Movies Screen**: Lists movies categorized and browsable.
- 📺 **TV Series Screen**: Lists TV series with categorization.
- 🔍 **Search Screen**: Allows searching for movies or TV series by name.
- 📋 **Category Browsing**: Each category (e.g., popular/top-rated) has a *"See All"* link to explore more in a grid view.
- 📝 **Details Screen**: View detailed info by tapping any movie or series poster.
- 📡 **Connectivity Check**: Uses `connectivity_plus` to detect internet status and show/hide an overlay accordingly.

## 🧪 Technologies Used

- **Flutter**
- **Retrofit + Dio** for network requests
- **JsonSerializable** for model generation
- **Cubit (Bloc)** for state management
- **Clean Architecture**
- **Connectivity Plus** for network status
- **BottomNavigationBar** for app structure
- **ListView / GridView** for UI rendering

## 🛠️ Project Structure

The app follows the **clean architecture** pattern with clear separation between:
- `ui`
- `logic`
- `data`
- `core`

## 📦 Installation

To run this app locally:

```bash
git clone https://github.com/a7medhosny/CinaSnack.git
cd CinaSnack
flutter pub get
flutter run
