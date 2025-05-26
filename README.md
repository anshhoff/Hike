# Hike

An iOS app project for learning various concepts of SwiftUI.

## Overview

**Hike** is a sample SwiftUI application designed to demonstrate key UI concepts and custom component creation in SwiftUI. The app features a visually engaging card interface that presents fun and enjoyable outdoor activities, making it perfect for friends and families.

## Features

- **Custom Card Interface:**  
  Displays information about hiking activities with a vibrant, animated design.

- **Reusable SwiftUI Components:**
  - `CardView`: Main visual card with dynamic images and gradients.
  - `CustomButtonView`: A stylized button with gradient and icon.
  - `CustomCircleView`: Animated gradient circle for decorative purposes.
  - `CustomBackgroundView`: Multi-layered background with gradients and rounded corners.
  - `MotionAnimationView`: Animated background elements for visual appeal.

- **Randomized Content:**  
  The card features an "Explore More" button that cycles through different hiking images.

- **Modern SwiftUI Patterns:**  
  Uses state management, custom view modifiers, and previews for rapid prototyping.

## Getting Started

### Prerequisites

- Xcode 15 or later
- iOS 17.0+ device or simulator

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/anshhoff/Hike.git
    ```

2. Open `Hike.xcodeproj` in Xcode.

3. Build and run the project on your simulator or device.

## Project Structure

```
Hike/
├── Component/
│   ├── CardView.swift
│   ├── CustomBackgroundView.swift
│   ├── CustomButtonView.swift
│   ├── CustomCircleView.swift
│   ├── CustomListView.swift
│   ├── MotionAnimationView.swift
├── Screen/
│   ├── ContentView.swift
│   ├── SettingsView.swift
├── ContentView.swift
├── HikeApp.swift
```

- **Component/**: Contains all reusable SwiftUI components.
- **Screen/**: Main app screens.
- **HikeApp.swift**: App entry point.

## Screenshots

<div style="display: flex; justify-content: center; gap: 16px;">
  <img src="https://github.com/user-attachments/assets/f1442bb0-d1ef-42dc-98ef-3b1cd788dc00" alt="Hike Screenshot 1" width="230"/>
  <img src="https://github.com/user-attachments/assets/700798ab-107b-48dd-aa6d-23c46c9f48c8" alt="Hike Screenshot 2" width="230"/>
  <img src="https://github.com/user-attachments/assets/33b88e6e-e291-4718-b3b6-75d77665db03" alt="Hike Screenshot 3" width="230"/>
</div>



## Credits

- Developed by [Ansh Hardaha](https://github.com/anshhoff)

## License

This project is for educational purposes and does not include a license file.

---

> **Note:** This project is intended to help users learn SwiftUI by exploring custom UI components and animation techniques. Contributions and suggestions are welcome!
