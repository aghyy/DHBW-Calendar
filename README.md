# DHBW Calendar

## Overview
Welcome to the improved DHBW Calendar! This project is a modern and feature-rich alternative to the traditional Rapla calendar. Our enhanced version offers a sleek and intuitive user interface, along with several additional functionalities not found in Rapla.

## Features
- **Modern UI**: Enjoy a clean and user-friendly design that enhances usability.
- **Month View**: A comprehensive month view of the calendar, a feature missing in Rapla.
- **Improved Week View**: A more detailed and organized week view for better planning.
- **Food Menu Plan**: View the DHBW Casino's food menu directly from the calendar.
- **Moodle Integration**: Access Moodle seamlessly within the calendar interface.
- **Keyboard Shortcuts**: Efficiently navigate and control the calendar using keyboard shortcuts.
- **TINF Courses Availability**: Availability and scheduling for all TINF courses.
- **Detailed Day View**: Get an in-depth view of your daily schedule.
- **Additional Features**: Various other minor functions to improve your calendar experience.

## Requirements
- Node.js must be installed, for this check out https://nodejs.org/en/download/package-manager

## Installation
To install and set up the DHBW Calendar, follow these steps:

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/aghyy/DHBW-Calendar.git
    ```
2. **Install Dependencies**:
    ```bash
    cd /path-to/DHBW-Calendar
    npm install
    ```

3. **Run the Application**:
    ```bash
    npm start
    ```

4. **Access the Application**:
    - Open your web browser and navigate to `http://localhost:6059` to access the DHBW Calendar.

## Docker Support
We also support Docker for easy deployment and management. Docker Compose is already available in the repository for your convenience.

### Steps to Get Started with Docker

1. **Install Docker**:
    - Follow the instructions on the [Docker website](https://docs.docker.com/get-docker/) to install Docker on your system.
  
2. **Install Docker Compose**:
    - Follow the instructions on the [Docker Compose website](https://docs.docker.com/compose/install/) to install Docker Compose.

3. **Clone the Repository**:
    ```bash
    git clone https://github.com/aghyy/DHBW-Calendar.git
    ```
4. **Navigate to the Project Directory**:
    ```bash
    cd /path-to/DHBW-Calendar
    ```

5. **Run the Application with Docker Compose**:
    ```bash
    docker-compose up
    ```

6. **Access the Application**:
    - Open your web browser and navigate to `http://localhost:6059` to access the DHBW Calendar.

7. **Stop the Application with Docker Compose**:
    ```bash
    docker-compose down
    ```

## Usage
- **Navigating the Calendar**:
  - Use arrow keys for quick navigation between the months/weeks.
  - Press `M` to switch to the month view.
  - Press `W` to switch to the week view.
  - Click on the corresponding day for the detailed day view.

- **Keyboard Navigation**:
  - Click on the "Keypad" icon at the top to see an overview of all shortcuts.

- **Viewing Food Menu**:
  - Click on the "Food Menu" icon at the top to see the week's offerings at the DHBW Casino.

- **Accessing Moodle**:
  - Click on the "Moodle" icon at the top to log in and access your courses.