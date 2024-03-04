# Connou UG (Haftungsbeschränkt) Flutter Counter App

This Flutter project is a simple counter application based on the BLoC (Business Logic Component) architecture. The counter value can be incremented, and we'll be adding the ability to decrement it. When the counter goes negative, the text color will turn red.

## Getting Started

1. **Clone the Repository:**

    ```bash
    git clone https://.../connou-test.git
    cd connou-test
    ```

2. **Install Dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the App:**

    ```bash
    flutter run
    ```

4. **Explore the App:**

    - The app will open, displaying the current counter value.
    - Press the "Increment" button to increase the counter.
    - [To be implemented] Press the "Decrement" button to decrease the counter.

## Task: Add Decrement Functionality

- Implement the ability to decrement the counter in the CounterHandler cubit.
- When the counter goes negative, change the text color to red in the UI.

## Project Structure

- lib/: Contains the Dart code for the Flutter application.
    - buisnes_logic/handler/: Contains all Handler
        - counter.dart: Defines the CounterHandler cubit.
    - data/models/: Contains all Models
        - counter.dart: Contains the CounterModel class.
    - main.dart: The entry point of the Flutter application.

Feel free to explore the code and make modifications based on your requirements.

## Submission Instructions

**Video Submission:**

Please create a short video (max 5 min) explaining the code and demonstrating the functionality of the App. The video should showcase the following:

1. Launching the app.
2. Incrementing the counter.
3. Decrementing the counter.
4. Highlighting the color change when the counter goes negative.
5. Explanation of all lines of code that you have added.

Upload the video to a platform of your choice (YouTube, Google Drive, etc.), and provide a shareable link.

**Code Submission:**

Ensure the codebase is available on a version control platform such as GitLab or GitHub. Follow these steps:

1. Create a new repository for your Flutter Counter App.
2. Push all your code to this repository, including any additional changes made during the task.
3. Set the repository to public or provide access permissions to the Connou team.

**Submission Email:**

Send an email to [careers@connou.app](mailto:careers@connou.app?subject=Application%20for%20Flutter%20Developer%20Position%20-%20[Your%20Name]) with the following details:

- Subject: Application for Flutter Developer Position - [Applicant's Name]
- Body:
    - Brief description of your implementation.
    - Shareable link to the video demonstration.
    - Link to the GitLab or GitHub repository with access instructions.
    - Attach your latest CV showcasing projects you have worked on

The Connou team will review your submission, and if necessary, they will contact you for further clarification.

Thank you for your efforts, and good luck with your submission!

**Happy coding!**
