import express, { Express } from 'express';
import { helloWorldHandler } from './route';

const app: Express = express();

app.get('/api/hello-world', helloWorldHandler);

app.listen(4000, () => console.log('listening at 4000'));
