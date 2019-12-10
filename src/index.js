import express from 'express';
import router from './routes';
import http from 'http';

const app = express();
app.use(express.json());
app.use('/', router);

const port = process.env.PORT || 3000;

app.set('port', port);

const server = http.createServer(app);
server.listen(port);

server.on('listening', () => console.log(`Listening on ${server.address().port}`))

process.on('SIGTERM', () => {
  server.close(() => {
    console.log('Process terminated')
  })
})
