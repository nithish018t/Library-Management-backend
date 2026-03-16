# Library Portal Backend (Java + MySQL)

## 1) Configure database
Edit `src/main/resources/application.properties`:
- `spring.datasource.username`
- `spring.datasource.password`

Current defaults are:
- username: `root`
- password: `root`

## 2) Start MySQL
Make sure MySQL Server is running locally on port `3306`.

## 3) Run backend
This project uses Maven + Spring Boot.

From `backend` folder:
```powershell
mvn spring-boot:run
```

Server starts at `http://localhost:8080`.

## 4) API endpoints used by frontend
- `POST /api/auth/register`
- `POST /api/auth/login`
- `POST /api/auth/reset-password`

## 5) Frontend
Open `../index.html` in browser.  
It is already configured to call `http://localhost:8080/api/auth`.
