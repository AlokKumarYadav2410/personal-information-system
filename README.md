# Personal Information System
The Personal Information System is a web-based application designed to manage and store personal information securely. The system allows users to add, update, delete, and view personal information. It is built using Java and utilizes a MySQL database for data storage. The application is deployed on an Apache Tomcat server.

<img src="https://github.com/AlokKumarYadav2410/personal-information-system/blob/5a72a5c496f88ed8fb6c1faae7c327449813f277/src/main/webapp/images/mainscreen.png" alt="mainscreen" width="98%" />

## Table of Contents
1. [Description](#description)
2. [Technologies Used](#technologies-used)
3. [Prerequisites](#prerequisites)
4. [Screenshots](#screenshots)
5. [Setup Instructions](#setup-instructions)
    1. [Clone the repository](#1.clone-the-repository)
    2. [Import the project into Eclipse](#import-the-project-into-eclipse)
    3. [Configure Tomcat Server in Eclipse](#configure-tomcat-server-in-eclipse)
    4. [Set up MySQL Database](#set-up-mysql-database)
    5. [Add MySQL Connector/J to the project](#add-mysql-connectorj-to-the-project)
    6. [Configure Database Connection](#configure-database-connection)
    7. [Deploy and Run the Application](#deploy-and-run-the-application)
6. [Usage](#usage)
7. [License](#license)
8. [Contributing](#contributing)
<!--8. [Contact](#contact)-->

## Description
The Personal Information System is a web-based application designed to manage and store personal information securely. The system allows users to add, update, delete, and view personal information. It is built using Java and utilizes a MySQL database for data storage. The application is deployed on an Apache Tomcat server.

## Technologies Used
- Java
- Apache Tomcat
- MySQL
- JDBC
- HTML/CSS
- JavaScript

## Prerequisites
Before running the project, ensure you have the following installed:

| Prerequisite       | Version       | Description                                                                 |
|--------------------|---------------|-----------------------------------------------------------------------------|
| Java Development Kit (JDK) | 8 or higher   | Required to compile and run the Java application.                           |
| Apache Tomcat      | 9.0 or higher | Required to deploy and run the web application.                             |
| MySQL Server       | 5.7 or higher | Required to store and manage the application's data.                        |
| MySQL Connector/J  | 8.0 or higher | JDBC driver for connecting the Java application to the MySQL database.      |
| Eclipse IDE        | Latest        | Recommended IDE for developing and managing the project.                    |

## Screenshots
<p>Few screenshots of the project is mentioned below:-</p>

<img src="https://github.com/AlokKumarYadav2410/personal-information-system/blob/5a72a5c496f88ed8fb6c1faae7c327449813f277/src/main/webapp/images/signup.png" alt="signup" width="48%" /> &nbsp; &nbsp; <img src="https://github.com/AlokKumarYadav2410/personal-information-system/blob/5a72a5c496f88ed8fb6c1faae7c327449813f277/src/main/webapp/images/signin.png" alt="signin" width="48%" />
<img src="https://github.com/AlokKumarYadav2410/personal-information-system/blob/5a72a5c496f88ed8fb6c1faae7c327449813f277/src/main/webapp/images/personalInfoScreen.png" alt="personalInfoScreen" width="48%" />&nbsp; &nbsp; <img src="https://github.com/AlokKumarYadav2410/personal-information-system/blob/5a72a5c496f88ed8fb6c1faae7c327449813f277/src/main/webapp/images/personalInfoUpdate.png" alt="personalInfoUpdate" width="48%" />

## Setup Instructions
1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/personal-information-system.git
    
    cd personal-information-system
    ```

2. **Import the project into Eclipse**:
    - Open Eclipse IDE.
    - Go to `File -> Import -> Existing Projects into Workspace`.
    - Select the cloned repository directory.

3. **Configure Tomcat Server in Eclipse**:
    - Go to `Window -> Preferences -> Server -> Runtime Environments`.
    - Click `Add`, select `Apache Tomcat v9.0`, and specify the installation directory.

4. **Set up MySQL Database**:
    - Start MySQL Server.
    - Create a database named `personal_info_db`.
    - Execute the SQL scripts provided in the `sql` directory to create the necessary tables.

5. **Add MySQL Connector/J to the project**:
    - Download the MySQL Connector/J from the [official website](https://dev.mysql.com/downloads/connector/j/).
    - Add the JAR file to the project's build path:
        - Right-click on the project in Eclipse.
        - Go to `Build Path -> Configure Build Path -> Libraries -> Add External JARs`.
        - Select the downloaded MySQL Connector/J JAR file.

6. **Configure Database Connection**:
    - Open the `src/main/resources/db.properties` file.
    - Update the database connection details:
        ```properties
        db.url=jdbc:mysql://localhost:3306/personal_info_db
        db.username=your_db_username
        db.password=your_db_password
        ```

7. **Deploy and Run the Application**:
    - Right-click on the project in Eclipse.
    - Go to `Run As -> Run on Server`.
    - Select the configured Tomcat server and click `Finish`.

## Usage
- Access the application in your web browser at `http://localhost:8080/personal-information-system`.
- Use the provided interface to manage personal information.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

<!--
## Contact
For any questions or support, please contact [yourname@domain.com](mailto:yourname@domain.com). -->
