# SwiftUI ARKit 3D Image Interaction

![Static Badge](https://img.shields.io/badge/v5.0-maker?label=swift&color=orange) ![Static Badge](https://img.shields.io/badge/IOS-maker?label=platforms&color=blue)

## 📝 Description
This repository contains a SwiftUI project that demonstrates how to integrate ARKit to animate and manipulate a 3D image within an augmented reality environment. The project showcases how to use ARKit in a SwiftUI app to display a 3D image, position it on detected surfaces, and make it respond to camera movements.

## Features
- ARKit Integration: Utilizes ARKit to detect the environment and place a 3D image on surfaces recognized by the camera.
- SwiftUI & ARKit: The project demonstrates how to combine ARKit with SwiftUI, leveraging each framework’s capabilities to create an engaging augmented reality experience.
- 3D Image Manipulation: Allows movement and interaction with a 3D image based on surface and camera orientation. The image dynamically follows the user’s movements, adding interactive depth to the experience.
- Surface Detection: Uses ARKit to detect flat surfaces and place the 3D scene, creating an immersive and intuitive experience.
- Dynamic Object Display: Displays the 3D image in response to camera orientation and device movement, showing how objects can interact realistically with the user’s surroundings.

## Technical Details
This project was built with SwiftUI and ARKit, two Apple technologies that make it easy to create modern, immersive interfaces for iOS. ARKit handles camera tracking and surface detection, while SwiftUI makes building the user interface simple and responsive.

## 📂 Project Structure
- ARViewContainer: Manages the AR view and integrates the 3D image, using ARKit to detect surfaces and position the object.
- SwiftUI Views: SwiftUI views present information and control the UI, allowing the user to interact with the AR scene.
- ARSession Management: Configures and manages the AR session, including surface detection options and motion tracking.


## 🛠 Tech stack

* [XCode v15.4](https://developer.apple.com/xcode/)
* [SwiftUI v5.0](https://developer.apple.com/documentation/swiftui)
* [iOS v17.5](https://www.apple.com/befr/ios/ios-17/)

## Getting Started

To get started with this project, simply clone the repository and open the project in Xcode. Make sure you have SwiftUI installed and are running a version of iOS that supports SwiftUI.
The project contains unit and snapshot tests. Reference images for snapshot tests were recorded using iPhone 15 Pro simulator.

## Contributions

Contributions to this project are welcome! If you find a bug or think of a new feature, feel free to open an issue or submit a pull request.

📄 License

Copyright © 2024 Aziza Elgoul

This project is licensed under the [MIT](https://opensource.org/license/mit) License. See the LICENSE file for more details.

