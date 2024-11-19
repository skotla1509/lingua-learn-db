# Language Learning App - MySQL Database

## Overview
The MySQL database for the Language Learning App is the core for managing users, flashcards, exercises, feedback, and related data. This document provides instructions to set up the database, create all tables and stored procedures, and populate it with sample data using MySQL Workbench.

**Note**: For more details about the app’s features and screens, refer to the `DESIGN-README.md`.

This project is part of a larger system and relies on the following repositories:
- [React Frontend Repository](https://github.com/skotla1509/lingua-learn-react-app) 
- [Node.js Backend Repository](https://github.com/skotla1509/lingua-learn-node-app) 
- [MySQL Database Repository](https://github.com/skotla1509/lingua-learn-db) 

---

## Table of Contents
1. [Database Schema](#database-schema)
2. [Setting Up the Database](#setting-up-the-database)
3. [Populating Sample Data](#populating-sample-data)
4. [Stored Procedures](#stored-procedures)
5. [Conceptual Design](#conceptual-design)
6. [Logical Design](#logical-design)
7. [Connecting the Database to the Node.js Server](#connecting-the-database-to-the-nodejs-server)

---

## Database Schema

Name of the database: **`language_learning`**
The database schema includes the following tables:

### Tables and Descriptions
1. **`user`**: Stores user credentials and profile information.
2. **`flashcard_deck`**: Represents collections of flashcards.
3. **`flashcard`**: Contains flashcards with front and back text.
4. **`feedback`**: Stores ratings and comments for decks.
5. **`user_favorites`**: Tracks favorite decks for each user.
6. **`user_practice_history`**: Logs user practice scores for decks.
7. **`language_exchange_post`**: Manages posts related to language exchange.
8. **`learning`**: Tracks languages users are learning.
9. **Questions**: `question_multiple_choice`, `question_fill_the_blank`, `question_true_or_false` manage different types of questions for decks.

---

## Setting Up the Database

### Step 1: Install and Start MySQL Workbench
Ensure MySQL Workbench is installed on your system and running. 

### Step 2: Create the Database Using Data Import
1. Open **MySQL Workbench** and connect to your MySQL server.
2. In the top menu, click **Server** > **Data Import**.
3. Under **Import Options**, select **Import from Self-Contained File**.
4. Browse and select the `dump.sql` file in the folder `db`.
6. Click **Start Import** to create the database, tables, and stored procedures.

---


## Populating Sample Data

### Step 1: Run the Insert Data Script
1. After creating the database using the **Data Import** method, run the `insert_stmts.sql` script to populate the database with sample data.
2. Open MySQL Workbench and select your `language_learning` database.
3. Click **File** > **Run SQL Script**.
4. Browse and select the `insert_stmts.sql` file.
5. Click **Open** and **Run** to populate the database tables with sample data.

### Step 2: Verify the Data
1. In **MySQL Workbench**, click on the `language_learning` database in the **Schemas** tab.
2. Explore the tables to confirm the data has been successfully inserted.


---

## Stored Procedures

### List of Stored Procedures
Here’s a list of the stored procedures in the database with brief descriptions:

1. **`create_user`**  
   - Adds a new user to the database with basic details.

2. **`find_user_by_credentials`**  
   - Verifies user credentials (username and password) for login.

3. **`add_learning`**  
   - Tracks a new language that a user starts learning.

4. **`find_all_cards_by_deck`**  
   - Retrieves all flashcards within a specific deck.

5. **`find_all_questions_by_deck`**  
   - Retrieves all questions for a specific deck, categorized by type (MCQ, Fill-in-the-Blank, True/False).

6. **`create_language_exchange_post`**  
   - Adds a new language exchange post for a user.

7. **`mark_unmark_favorite_deck_for_user`**  
   - Toggles a deck as a favorite for a user.

8. **`find_feedback_of_deck`**  
   - Retrieves all feedback (ratings and comments) for a specific deck.

9. **`create_practice_history_for_deck`**  
   - Logs or updates a user’s practice score for a deck.

10. **`find_user_flashcard_stats`**  
    - Generates average scores for a user across languages and decks.

11. **`find_all_languages`**  
    - Retrieves a list of all available languages.

---

## Conceptual Design
![image](https://github.com/user-attachments/assets/a2d7d550-7e0b-4309-81f9-b5546577b72a)

## Logical Design
![image](https://github.com/user-attachments/assets/56ffeb46-2474-4b7d-a728-ba3a1c09acdd)

---

## Connecting the Database to the Node.js Server

### Step 1: Update Environment Variables
Create a `.env` file in your Node.js server directory with the following:
```env
MYSQL_HOST=localhost
MYSQL_USER=your_username
MYSQL_PASSWORD=your_password
MYSQL_DATABASE=language_learning
```

### Step 2: Install MySQL Driver for Node.js
Ensure the Node.js server has the MySQL driver installed:
```bash
npm install mysql
```

### Step 3: Test the Connection
Use the following script to test the connection:
```javascript
const mysql = require('mysql');

const connection = mysql.createConnection({
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
});

connection.connect((err) => {
  if (err) throw err;
  console.log('Connected to MySQL database');
});
```

---
