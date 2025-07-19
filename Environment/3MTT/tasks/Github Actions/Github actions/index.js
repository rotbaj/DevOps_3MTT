const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Welcome to My CI/CD Demo</h1><p>This is a simple static page served by Express.</p>');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

module.exports = app; // Export for testing
