# Minimal E-Commerce App

## Features

- **View Products**: Users can view range of selected items/ products
- **Add Items to Cart**: Users can add any item to the cart
- **Remove Items from Cart**: Users can view their cart and choose to remove any items already present in their carts.
- **Design**: The sleek and minimal design provides an enriching and hassle-free experience for the user.

## Screenshots
![Sidebar]("./screenshots/sidebar.jpg")

![Shop Page]("./screenshots/shop_page.jpg")

![Cart Page]("./screenshots/cart_page.jpg")

## How to Use

1. **Clone Repository**: Clone this repository to your local machine.

2. **Install Dependencies**: Make sure you have Flutter installed on your machine. Run `flutter pub get` to install the required dependencies.

3. **Run the App**: Launch the app using the Flutter command `flutter run`. The app should start running on your connected device or emulator.

4. **Use the App**: You will be greeted with a home screen which takes you to the shop page. You can access the Cart via the Drawer on the left or the Cart symbol at the top-right corner.

## Dependencies

This app relies on the following dependencies:

- `material`: Material design widgets for building Flutter applications.
- `navigator`: Navigator allows to seamlessly navigate across the different pages of the app.
- `provider`: Provider exposes a value down the widget tree so that children can have access to it, regardless their location (but still, they must be at least one level below the provider). ChangeNotifier provides the possibility to rebuild listeners when something changes.
