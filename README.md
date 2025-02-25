# Accredian Backend Task

This is the backend for the **Refer & Earn** landing page. It is built with **Express.js**, uses **Prisma ORM** to interact with a **MySQL database**  

---

## 🚀 Features
- RESTful APIs to handle referral form data.  
- Stores referral information in a **MySQL database** using **Prisma ORM**. 
- Input validation and error handling.  

---

## 🛠️ Technologies Used
- **Node.js** - Backend runtime environment.  
- **Express.js** - Web framework for building REST APIs.  
- **Prisma ORM** - Database client for MySQL.  
- **MySQL** - Relational database for storing referral data.
- **Dotenv** - Manage environment variables.  

---

## 📂 Project Structure
Accredian-backend-task
- | - index.js # Entry point
- | - package.json
- | - .env # Environment variables
- | - .env.sample # Sample environment variables
- | - README.md
- | - prisma
  - | - schema.prisma
  - | - migrations
- | - route
  - | - referralRoutes.js
- | - config
  - | - emailConfig.js



---

## ⚙️ Environment Variables

Create a `.env` file in the root directory and add the following:

```env
DATABASE_URL="your database url here like - mysql://<username>:<password>@localhost:3306/<database_name>"
GMAIL_USER="your gmail id from which you want to send email"
GMAIL_PASS="your gmail password"
PORT="port on which you want to run the server"
```

## 📦 Installation
Clone the repository
```
git clone https://github.com/YOUR_USERNAME/Accredian-backend-task.git
cd Accredian-backend-task
```
Install dependencies
```
npm install
```
Prisma Migrations
```
npx prisma migrate deploy
```
Start the server
```
npm start
```

## 📊 Database Setup
To initialise database, run
```
npx prisma db push
```
## 📫 API endpoints
- GET - /api/referrals
- POST - /api/referrals

## 🚀 Deployment
Backend on render
- Push your code to GitHub.
- Go to Render and click on New > Web Service.
- Connect your GitHub repository.
- In Environment Variables, add the variables from your .env file.
- Click Deploy.

## 🐛 Troubleshooting
P1001: Can't reach database server

- Check your DATABASE_URL and ensure the MySQL database is accessible.
- Verify your Render environment variables.

🤝 Contributing
Contributions are welcome!

- Fork the repo.
- Create your feature branch: git checkout -b feature/YourFeature.
- Commit your changes: git commit -m 'Add some feature'.
- Push to the branch: git push origin feature/YourFeature.
- Open a pull request.

## 📦 Note  
- Add a **.env.sample** file to the repository for reference.  
- Test all endpoints using **Postman** or **Insomnia** before deploying.  
- Deploy the backend on **Render** and connect with the frontend hosted on **Vercel**.  

If you need help with the frontend README or deployment steps, let me know! 🚀

