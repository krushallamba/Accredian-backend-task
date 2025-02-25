require('dotenv').config();
const express = require('express');
const cors = require('cors');
const referralRoutes = require('./route/referralRoutes');

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use('/api/referrals', referralRoutes);

// Server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
