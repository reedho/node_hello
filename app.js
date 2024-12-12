// Import the required modules
import http from 'http';

// Define the port to listen on
const PORT = 3000;

// Create an HTTP server
const server = http.createServer((req, res) => {
  // Set the response HTTP header with HTTP status and Content type
  res.writeHead(200, { 'Content-Type': 'text/plain' });

  // Send the response body as "Hello, World!"
  res.end('Hello, World!\n');
});

// The server listens on the specified port and prints a message to the console
server.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}/`);
});

