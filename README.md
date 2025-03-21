# 🚀 PHP + MySQL + Docker CRUD Application

This project is a simple PHP CRUD application running inside Docker with a MySQL database. It includes user management (Create, Read, Update, Delete) and integrates with phpMyAdmin for database management.

## 📂 Project Structure
```sh
php-docker-app/
│── docker-compose.yml   # Defines Docker services (PHP, MySQL, phpMyAdmin)
│── Dockerfile           # PHP environment setup
│── .env                 # Environment variables (MySQL credentials)
│── src/
│   ├── index.php        # CRUD operations for users
│   ├── db.php           # Database connection
│   ├── database.sql     # MySQL table schema
└── .gitignore           # Files to exclude from Git
```
## ⚙️ Setup Instructions

### 1️⃣ Clone the Repository
```sh
git clone <your-repo-url>
cd php-docker-app
```
### 2️⃣ Start the Docker Containers
```sh
docker-compose up -d
```
This will:  
✅ Start the PHP server at http://localhost:8080  
✅ Start the MySQL database on port 3306  
✅ Start phpMyAdmin at http://localhost:8081  

## 🛠️ Database Setup

### 3️⃣ Create Database Table

Run the following command to initialize the database:
```sh
docker exec -i mysql-db mysql -u root -proot testdb < src/database.sql
```
## 🌟 Features

✅ Create, Read, Update, and Delete (CRUD) users  
✅ MySQL integration inside Docker  
✅ phpMyAdmin for easy database management  
✅ Uses docker-compose for easy deployment

## 🖥️ How to Use

### ➕ Add a User

Open http://localhost:8080

Enter Name and Email, then click "Add User"

### 🗑️ Delete a User

Click "Delete" next to a user in the table.

### 🔧 Stopping the Project

To stop and remove containers:
```sh
docker-compose down
```
## 🤝 Contributing

Feel free to submit issues or pull requests to improve this project. 🚀
