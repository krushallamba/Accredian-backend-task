const express = require('express');
const { PrismaClient } = require('@prisma/client');
const sendReferralEmail = require('../config/emailConfig');


const router = express.Router();
const prisma = new PrismaClient();

// Create Referral
router.post('/', async (req, res) => {
  const { referrerName, referrerEmail, refereeName, refereeEmail, course } = req.body;

  // Validation
  if (!referrerName || !referrerEmail || !refereeName || !refereeEmail || !course) {
    return res.status(400).json({ error: 'All fields are required.' });
  }

  // Email Validation
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(referrerEmail) || !emailRegex.test(refereeEmail)) {
    return res.status(400).json({ error: 'Invalid email format.' });
  }

  try {
    // Save Referral in Database
    const newReferral = await prisma.referral.create({
      data: { referrerName, referrerEmail, refereeName, refereeEmail, course },
    });

    // Send Email Notification
    await sendReferralEmail(referrerName, refereeEmail);

    res.status(201).json(newReferral);
  } catch (error) {
    if (error.code === 'P2002') {
      res.status(409).json({ error: 'This email has already been referred.' });
    } else {
      res.status(500).json({ error: 'Internal server error.' });
    }
  }
});

// Get All Referrals
router.get('/', async (req, res) => {
  try {
    const referrals = await prisma.referral.findMany();
    res.status(200).json(referrals);
  } catch (error) {
    res.status(500).json({ error: 'Internal server error.' });
  }
});

module.exports = router;
