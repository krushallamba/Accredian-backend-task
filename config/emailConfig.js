const nodemailer = require('nodemailer');

const transporter = nodemailer.createTransport({
    host: 'smtp.ethereal.email',
    auth: {
      user: process.env.GMAIL_USER,
      pass: process.env.GMAIL_PASS,
    },
  });

const sendReferralEmail = async (referrerName, refereeEmail) => {
  const mailOptions = {
    from: process.env.GMAIL_USER,
    to: refereeEmail,
    subject: 'You Have Been Referred!',
    text: `Hi! ${referrerName} has referred you to join our course. Check it out!`,
  };

  try {
    await transporter.sendMail(mailOptions);
    console.log('Referral email sent successfully!');
  } catch (error) {
    console.error('Failed to send referral email:', error);
  }
};

module.exports = sendReferralEmail;
