<!-- PROJECT LOGO -->
<br />

![GitHub repo size](https://img.shields.io/github/repo-size/isla-just/Waddle?color=%23FECFBF)
![GitHub watchers](https://img.shields.io/github/watchers/isla-just/Waddle?color=%23FFE598)
![GitHub language count](https://img.shields.io/github/languages/count/isla-just/Waddle?color=%235F5AA9)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/isla-just/Waddle?color=%23D7DFF2)
[![LinkedIn][linkedin-shield]][linkedin-url]
[![Instagram][instagram-shield]][instagram-url]

<h6 align="center">Isla Just 200080 iOS 304</h6>
<p align="center">
</br>
   
   <p align="center">
  <a href="https://github.com/isla-just/Waddle ">
    <img src="ReadMeImg/logo.png" alt="Logo" width="200" height="">
  </a>
  </p>
  
  <h3 align="center">Waddle</h3>

  <p align="center">
    tracking life's most important moments with every stepy<br>
      <a href="https://github.com/isla-just/Waddle"><strong>Explore the docs »</strong></a>
      <br />
      <br />
      <a href="ReadMeImg/IslaJust_200080_DV300_T1_demo.mp4">View Demo</a>
       ·
       <a href="https://github.com/isla-just/Waddle/issues">Report Bug</a>
       ·
       <a href="https://github.com/isla-just/Waddle/issues">Request Feature</a>
   </p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Project Description](#project-description)
  * [Built with](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Features and Functionality](#features-and-functionality)
   * [Features](#features)
   * [Functionality](#functionality)
* [Concept Process](#concept-process)
   * [Wireframes](#wireframes)
   * [User-flow](#user-flow)
* [Development Process](#development-process)
   * [Implementation Process](#implementation-process)
        * [Highlights](#highlights)
        * [Challenges](#challenges)
   * [Reviews and Testing](#reviews-and-testing)
        * [Unit Testing](#unit-testing)
   * [Future Implementation](#future-implementation)
* [Final Outcome](#final-outcome)
   * [Mockups](#mockups)
   * [Video Demonstration](#video-demonstration)
   * [Promotional Video](#promotional-video)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!--PROJECT DESCRIPTION-->
## About the Project

![image1][image1]

### Project Description

An iOS application that helps parents document their child's every step by keeping track of memories in the form of photos. This app uses Healthkit to track the child's steps on their Apple Watch and visualises them on the app. 

### Built With

* [XCode](https://developer.apple.com/xcode/)
* [SwiftUI](https://developer.apple.com/xcode/swiftui/)
* [Firebase](https://firebase.google.com/?gclid=Cj0KCQjwwfiaBhC7ARIsAGvcPe5DRjkUY2O7i9VPZ6dEwn8pTDhPKjj5RaNPlA5o3maWIhiyTrJbbsoaApU6EALw_wcB&gclsrc=aw.ds)

![image2][image2]

<!-- GETTING STARTED -->
## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

For development XCode is required which can be downloaded from [here](https://apps.apple.com/us/app/xcode/id497799835?mt=12)

### Installation
 
1. Clone the repo
```sh
git clone https://github.com/isla-just/Waddle.git
```
2. Locate the file and open it in XCode

3. Setup your firebase by creating a project in the console and following the installation instructions

4. Add the following packages to your project 
- concentric onboarding(https://github.com/exyte/ConcentricOnboarding.git)
- SDWeb image (https://github.com/SDWebImage/SDWebImageSwiftUI.git)

4. Chose any simulator you'd like to use and press the play button to run the app

<!-- FEATURES AND FUNCTIONALITY-->
## Features and Functionality

### Features

![image4][image4]

### Immersive onboarding experience
Interact with the concentric onboarding screens as you learn about the app

### Login, Signup and account customisation
Login to your account or create a new account. complete the watch setup and manage permissions surrounding camera usage and health app usage. 

### Dashboard page
View a visualisation of the weekly step data as well as a list of the total steps taken. See a list of recent memories  

### Memories page
Search through all of your family memories in this gallery of photos

### Detailed view
Click on a memory to see details about it like the date, description and the amount of steps taken that day

### Add memory
Add a memory quickly and easily by tapping to add the media and adding a short description of the memory

### Authentication
Keep your memories safe by unlocking the app using face ID every time you open it

### Apple watch app
Your child can see an overview of the family memories when opening the app from their watch

### Additional functionality
* onboarding sequence animation
* login and signup
* account customisation screens 
* adding memories and media
* memory gallery

<!-- CONCEPT PROCESS -->
## Concept Process

The `Conceptual Process` is the set of actions, activities and research that was done when starting this project.

### Initial designs

![image7][image7]

### User-flow

![image3][image3]

<!-- DEVELOPMENT PROCESS -->
## Development Process


The `Development Process` is the technical implementations and functionality done in the backend of the application.

### Implementation Process

#### Frontend development
I started this project by developing all of my frontend screens and making sure that I had the skeleton of the project so I could just add the backend

#### Onboarding sequence
Next, I found a really nice concentric onboarding tutorial and followed along to create my animated onboarding sequence 

#### Fetching steps
Next, I focussed on getting step data from the apple watch using Healthkit and visualising it nicely on the frontend

#### Firebase
Then I installed the SDK to setup my firebase and started implementing the add memory functionality and started mapping it out on the frontend

#### Authentication
Next, I focussed on login and signing up using Firebase authentication. I also learnt how to use face ID to ensure that your memories are safe

#### Apple Watch app
I added some finishing touches to the frontend and implemented session storage and then focussed on my memory apple watch app

### Highlights

* I really enjoyed being able to be creative with this concept and explore an interesting visual style. I really enjoyed that I was able to have such a string concept throughout this project and really enjoyed accessing step data with healthkit. I also really enjoyed implementing the widget

#### Challenges

* Time management was tricky this term due to the amount of stuff going on but I am pleased that I got everything done. I also struggled with mapping my firebase data on the frontend but it was a super simple fix when I eventually got it


#### Future Implementation

* Adding more charts and visualisations
* Adding a widget
* Adding more filters
* Capturing locations

![image6][image6]

<!-- MOCKUPS -->
## Final Outcome
### Mockups

![image5][image5]

<!-- VIDEO DEMONSTRATION -->
## Video Demonstration

To see a run through of the application, click below:

[View Demonstration]()

<!-- PROMO VIDEO -->
## Promotional Video

To see the promotional video, click below:

[View Promotional Video]()

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/isla-just/Waddle/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- AUTHORS -->
## Authors

* **Isla Just** - [IslaJust](https://github.com/isla-just)

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.\

<!-- LICENSE -->
## Contact

* **Isla Just** - [@byislajust](https://www.instagram.com/byislajust/) - isla@just.co.za
* **Project Link** - https://github.com/isla-just/Waddle

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Kavsoft Swift tutorials](https://www.youtube.com/c/Kavsoft)
* [Onboarding tutorial](https://www.youtube.com/watch?v=z1GtiOu9h3o)
* [Healthkit tutorial](https://www.youtube.com/watch?v=ohgrzM9gfvM)
* [Healthkit tutorial 2](https://www.youtube.com/watch?v=AJV6a3prckY)
* [Firebase documentation]()
* [Web Image](https://github.com/SDWebImage/SDWebImageSwiftUI)

mockups:
* https://originalmockups.com/mockups/free-mockups
* https://freedesignresources.net/category/free-mockups/?_paged=6
* https://www.anthonyboyd.graphics/mockups/28/

* lecturer: Armand Pretorius https://github.com/ArmandPret

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/isla-just-b038a2202
[instagram-shield]: https://img.shields.io/badge/-Instagram-black.svg?style=flat-square&logo=instagram&colorB=555
[instagram-url]: https://www.instagram.com/dylandasilva.designs/

<!-- MARKDOWN LINKS & IMAGES -->
[image1]: ReadMeImg/slide1.png
[image2]: ReadMeImg/slide2.png
[image3]: ReadMeImg/slide3.png
[image4]: ReadMeImg/slide4.png
[image5]: ReadMeImg/slide5.png
[image6]: ReadMeImg/slide6.png
[image7]: ReadMeImg/slide7.png
[image8]: ReadMeImg/slide8.png
[image9]: ReadMeImg/slide9.png
[image10]: ReadMeImg/slide10.png
[image11]: ReadMeImg/slide11.png
[image12]: ReadMeImg/slide12.png

[image15]: ReadMeImg/devmockup1.png

 
