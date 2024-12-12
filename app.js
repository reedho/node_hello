// Import the required modules
import http from 'http';
import Pool from 'pg-pool';

// Define the port to listen on
const PORT = process.env.APP_PORT ? parseInt(process.env.APP_PORT, 10) : 3000;

// Configure PostgreSQL connection pool
const pool = new Pool({
  user: process.env.PG_USER || 'ridho',
  host: process.env.PG_HOST || 'localhost',
  database: process.env.PG_DATABASE || 'simple_node_app',
  password: process.env.PG_PASSWORD || '',
  port: process.env.PG_PORT ? parseInt(process.env.PG_PORT, 10) : 5432, // Default PostgreSQL port
});

// Create an HTTP server
const server = http.createServer(async (req, res) => {
  // Set the response HTTP header with HTTP status and Content type
  res.writeHead(200, { 'Content-Type': 'application/json' });

  try {
    // Query the database using the pool
    const result = await pool.query('SELECT * FROM your_table_name');

    // Send the query result as JSON
    res.end(JSON.stringify(result.rows));
  } catch (err) {
    console.error('Error executing query', err.stack);
    res.writeHead(500, { 'Content-Type': 'text/plain' });
    res.end('Internal Server Error');
  }
});

// Graceful shutdown function
const shutdown = () => {
  console.log('Shutting down server...');
  server.close(() => {
    console.log('HTTP server closed.');
    pool.end(() => {
      console.log('Database pool closed.');
      process.exit(0);
    });
  });
};

// Handle termination signals
process.on('SIGINT', shutdown);
process.on('SIGTERM', shutdown);

// The server listens on the specified port and prints a message to the console
server.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}/`);
});
