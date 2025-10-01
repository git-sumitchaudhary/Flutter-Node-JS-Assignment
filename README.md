# Mobile App (Flutter Frontend & Node.js Backend)

This project implements a mobile application with a Flutter frontend and a Node.js Express backend. The application allows users to browse different categories like "Travel & Stay", "Banquets & Venues", and "Retail & Shops", and provides a search functionality for banquets and venues.

## Features

*   **Category Browsing:** View a list of categories with associated images.
*   **Dynamic Content:** Data for categories, travel & stay, banquets & venues, and retail & shops is served from a Node.js backend.
*   **Banquets & Venues Search:** A detailed form to search for banquets based on event type, location, dates, number of adults, catering preferences, cuisines, and budget.
*   **Responsive UI:** Built with Flutter for a consistent experience across platforms.
*   **RESTful API:** Node.js Express backend providing JSON data to the frontend.

## Screenshots

### Home Screen
![Home Screen](https://private-us-east-1.manuscdn.com/sessionFile/Tzxoc6PCxnXZjWKTPz4oam/sandbox/yzgvBV14FulyZ34hyuPAZ0-images_1759341422596_na1fn_L2hvbWUvdWJ1bnR1L3NjcmVlbnNob3RzL2hvbWVfc2NyZWVu.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvVHp4b2M2UEN4blhaaldLVFB6NG9hbS9zYW5kYm94L3l6Z3ZCVjE0RnVseVozNGh5dVBBWjAtaW1hZ2VzXzE3NTkzNDE0MjI1OTZfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzTmpjbVZsYm5Ob2IzUnpMMmh2YldWZmMyTnlaV1Z1LnBuZyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTc5ODc2MTYwMH19fV19&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=c2PK47qjsZeDekVUjOb4cI1ZzEtxtemKsN7SzepnQEMEGh3AZhZa3oxETJ4xr4B3CJTFa0vFlvHK1uJOyiOscT-2xxQxj4roC~XRGbB8C6uA8zcoYYmPOYe0W6sVU-9yILo5toxmg2FC6tnOXqVsoSh~q126zKMqNqkbfJt7T~bvo4ycbbviK623-lME4fqaz0MJtbrOtWjs883F7tSpDFEzj9OP0v8icpEzySkmiFDDgffSFXX3RK6pivwoZHQUMPx8QYC2gsHdKPzpc~xE1VVfuoe8jt6INGqd9vXwh4JGfh9eQiIiBYeJv9esdqbV3ZoQtbTP4vqQa2akLH8~rg__)

### Travel & Stay Screen
![Travel & Stay Screen](https://private-us-east-1.manuscdn.com/sessionFile/Tzxoc6PCxnXZjWKTPz4oam/sandbox/yzgvBV14FulyZ34hyuPAZ0-images_1759341422597_na1fn_L2hvbWUvdWJ1bnR1L3NjcmVlbnNob3RzL3RyYXZlbF9zdGF5X3NjcmVlbg.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvVHp4b2M2UEN4blhaaldLVFB6NG9hbS9zYW5kYm94L3l6Z3ZCVjE0RnVseVozNGh5dVBBWjAtaW1hZ2VzXzE3NTkzNDE0MjI1OTdfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzTmpjbVZsYm5Ob2IzUnpMM1J5WVhabGJGOXpkR0Y1WDNOamNtVmxiZy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=dY4ncZSf1NOCatlMy7KB7r4EgAT~BB8CjtnX3aZW7gfoWv7OW7ndBDGKbHrS32y41ZfnNlplRhCuQMxwB6JAr6h1IGlH6GyHaNGEMU6rIoT8lk8FVU5PjDVyvfc4sPCkKRwcmVQRuRZsUR19xCw2V7sVNsLZA3uqyFA2YTeAiDNcReOUnOURI4My-W4JAd3lX~nE6eM7SdMDQMqU5DBAFAbukYnoJDUjdaQJMB5SKn98lKvd47p-VX2~X9o6Ly-cCYRhC4JQcBGT7a~TDeUfVwF-kOsMzpXGZja-Yze-INLeDKmHDqyaMQsjTJIMPgDCElAZRQmfTdFz2~nTzgj6Ww__)

### Banquets & Venues Form
![Banquets & Venues Form](https://private-us-east-1.manuscdn.com/sessionFile/Tzxoc6PCxnXZjWKTPz4oam/sandbox/yzgvBV14FulyZ34hyuPAZ0-images_1759341422597_na1fn_L2hvbWUvdWJ1bnR1L3NjcmVlbnNob3RzL2JhbnF1ZXRzX3ZlbnVlc19mb3Jt.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvVHp4b2M2UEN4blhaaldLVFB6NG9hbS9zYW5kYm94L3l6Z3ZCVjE0RnVseVozNGh5dVBBWjAtaW1hZ2VzXzE3NTkzNDE0MjI1OTdfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzTmpjbVZsYm5Ob2IzUnpMMkpoYm5GMVpYUnpYM1psYm5WbGMxOW1iM0p0LnBuZyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTc5ODc2MTYwMH19fV19&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=Hv2FSZI1AL9LMGQt8dFSi8iMs~-s9fVDPtcIL0z8h9meENEbkwq79sJGjQhufBsrxBP-hfqfHfZAisXye38qAhfo~OYK7Y-eYqx1Xni17PeiGqM99IPHDAxTAb~ocAwa5YfpDd5DNwqdY8e7s9GH3NkrpyQUaD4aufdRRHq7vzTzSVvJvLzFsec1X14HLeJfQkRFL77O0S0XCl7dawbUR80oiIMCEdFKwHC4AvVs0UXZv9XYVCwjMz4uLazvGTrf~JQ5FSCSZDb0zupdoHrRQKX5KGfvZsKtqwYytwbFFUVydw9siozHbbhHfXH5fUsKwXIEAM0cZ6YJtVDhnLIm2g__)

### Banquets & Venues Date Picker
![Banquets & Venues Date Picker](https://private-us-east-1.manuscdn.com/sessionFile/Tzxoc6PCxnXZjWKTPz4oam/sandbox/yzgvBV14FulyZ34hyuPAZ0-images_1759341422598_na1fn_L2hvbWUvdWJ1bnR1L3NjcmVlbnNob3RzL2JhbnF1ZXRzX3ZlbnVlc19kYXRlX3BpY2tlcg.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvVHp4b2M2UEN4blhaaldLVFB6NG9hbS9zYW5kYm94L3l6Z3ZCVjE0RnVseVozNGh5dVBBWjAtaW1hZ2VzXzE3NTkzNDE0MjI1OThfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzTmpjbVZsYm5Ob2IzUnpMMkpoYm5GMVpYUnpYM1psYm5WbGMxOWtZWFJsWDNCcFkydGxjZy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=mPvP8rfBIEC0NQ5IWl-QW06YKqknzCzThIwMgJZTHW43UXf5MXwDwKp8XHaxszG4cnJASdcdZptGrzf7PV22QrDGMO3xHzcIeWyCjT4TXhnouFkutxNpBes-DCjY7zMZfAFqR~FKktUgzWnjl75db4jo~JiMdFrKCCX4ncJ-n~He8DCxe7fE2bFRirfCnXhkEM1jlff6GNEwYR3jlQmZO4xL2MYXfFGwXRRCiNFseh43JO4GVCdRMj16JrY-3VsJvYzsqIcjBjq8Gx7qm0EwehIlAIiUXmmBhMjW6ojFJ4aR06x7ueM2RuJ73~Zj9lCK-0IsXMtwYY1mK1jQdh28lw__)

### Retail & Shops Screen
![Retail & Shops Screen](https://private-us-east-1.manuscdn.com/sessionFile/Tzxoc6PCxnXZjWKTPz4oam/sandbox/yzgvBV14FulyZ34hyuPAZ0-images_1759341422598_na1fn_L2hvbWUvdWJ1bnR1L3NjcmVlbnNob3RzL3JldGFpbF9zaG9wc19zY3JlZW4.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvVHp4b2M2UEN4blhaaldLVFB6NG9hbS9zYW5kYm94L3l6Z3ZCVjE0RnVseVozNGh5dVBBWjAtaW1hZ2VzXzE3NTkzNDE0MjI1OThfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzTmpjbVZsYm5Ob2IzUnpMM0psZEdGcGJGOXphRzl3YzE5elkzSmxaVzQucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzk4NzYxNjAwfX19XX0_&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=sv7JQGnbNwULT88ej527wxVQzkogBCmFyxwK5ggppdXIM0IM3u5TdzAlvzguUdHLMysMbsB5EkVR7nBPuD~0yC5qtgwktaWz-i7P5APgaAOKoavUMPKGt2tcOSVoIXmDpkBJtyw19u~TVb0bD3MT5-ppI~srNOKlrgdSs2ge2SJ6VuV9DC7B2j6C6QWftDvBQ9n2k7l5BZp2MLxxeWLHUS8ZFIDy5-ps5ZqRp~RZy2VAI76P~KebqEeG0JcctMVMmbSrJbxL~fzNOEsgEljWRHUrDWM9sMwXVMHnkc8ICej1gRjtdP6nh9prEETuEDrRY1NZRUL6G4MjOIqhZv7hVQ__)

## Technologies Used

### Frontend
*   **Flutter:** UI Toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
*   **Dart:** Programming language for Flutter.
*   **`http` package:** For making API requests.

### Backend
*   **Node.js:** JavaScript runtime environment.
*   **Express.js:** Web application framework for Node.js.
*   **`body-parser`:** Middleware to parse incoming request bodies.
*   **`cors`:** Middleware to enable Cross-Origin Resource Sharing.

## Setup Instructions

Follow these steps to set up and run the application locally.

### 1. Backend Setup (Node.js)

1.  **Navigate to the `backend` directory:**
    ```bash
    cd backend
    ```

2.  **Install dependencies:**
    ```bash
    npm install
    ```

3.  **Start the backend server:**
    ```bash
    npm start
    ```
    The server will run on `http://localhost:3000`.

### 2. Frontend Setup (Flutter)

1.  **Ensure Flutter SDK is installed:**
    If you don't have Flutter installed, follow the official installation guide: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2.  **Navigate to the `frontend` directory:**
    ```bash
    cd frontend
    ```

3.  **Install Flutter dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Run the Flutter application:**
    ```bash
    flutter run
    ```
    This will launch the app on your connected device or emulator. Ensure your backend server is running before launching the frontend.

## Usage

*   **Home Screen:** Displays a list of categories. Tap on a category to navigate to its respective screen.
*   **Travel & Stay:** Shows a list of travel and stay options.
*   **Banquets & Venues:** Provides a form to search for venues based on various criteria. Fill in the details and click "Submit Request" to see sample results.
*   **Retail & Shops:** Displays a list of retail and shop options.

## Contributing

Feel free to fork the repository, make improvements, and submit pull requests.

## License

This project is licensed under the MIT License.
