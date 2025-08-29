# Flutter Shopping App

A fully functional shopping application built with Flutter that simulates a real-world shopping interface with user authentication, product displays, cart interactions, and responsive UI.

<p align="center">
  <img width="131" height="195" alt="image" src="https://github.com/user-attachments/assets/87adb379-0ae8-4bec-8a1e-cda775c380a2" />
</p>



## Project Overview
This comprehensive Flutter project guides developers through the creation of a shopping application, starting from core Dart programming principles and advancing to professional mobile app development. The application includes:

- User authentication (sign-up/sign-in)
- Product catalog with featured items and hot offers
- Shopping cart functionality
- Responsive and animated UI transitions

The project follows best practices in Flutter development, including proper file structures, modular widgets, and detailed documentation.

## Features

### 1. Aesthetic Welcome Screen
- AppBar widget as a title app
- Two images in a row (1 local image + 1 online image)
- Custom fonts (Suwannaphum-Regular) with custom sizing, bold, and colored text
- Centered elements with adequate spacing
- Sign-up and Sign-in buttons



### 2. User Authentication
**Sign-Up Form:**
- Full Name (First letter must be uppercase)
- Email (Must include @)
- Password (At least 6 characters)
- Confirm Password (Must match password)
- Success dialog: "Account created successfully"

**Sign-In Form:**
- Email (Must include @)
- Password (At least 6 characters)
- Success dialog: "Account sign-in successfully"

<p align="center">
<img width="131" height="195"  alt="image" src="https://github.com/user-attachments/assets/dce50ab0-142a-488a-8aba-3cda8e36b82a" />
<img width="131" height="195"  alt="image" src="https://github.com/user-attachments/assets/45d72351-20c4-4e2f-a305-97dec4952393" />
<img width="131" height="195"  alt="image" src="https://github.com/user-attachments/assets/38df1c07-7214-4b97-9e18-af45f28a69b8" />
<p/>





### 3. Animated Navigation
- Smooth fade-out transition from authentication screens
- Seamless fade-in transition to the shopping home screen

### 4. Interactive Shopping Home Screen
- AppBar titled "Our Products"
- Horizontal PageView for featured product images
- Responsive GridView showing product cards (2 per row)
  - Product image
  - Product title
  - Add to Cart icon (shows SnackBar: "Item added to the cart")
- "Hot Offers" section with vertically scrollable list (5 offers)
  - Each item includes an image and description using Expanded
    
<p align="center">
<img width="131" height="195"  alt="image" src="https://github.com/user-attachments/assets/faafd78d-62da-4f97-bf9c-611b002b11a2" />
<img width="131" height="195"  alt="image" src="https://github.com/user-attachments/assets/9ffa30d8-3141-471a-8987-a880c2987b1c" />
<p/>


## Setup Instructions

### Prerequisites
- Flutter SDK (latest version)
- Dart
- VS Code or Android Studio
- Git

### Installation Steps
Clone the repository:
```bash
git clone https://github.com/NourK/flutter-shopping-app.git
cd flutter-shopping-app
```

Install dependencies:
```bash
flutter pub get
```

Run the application:
```bash
flutter run
```

## Default Test Account
- **Username:** Nour K
- **Email:** nour.khattab90@gmail.com
- **Password:** 123456789

