# Hello World

A simple hello world application

Running the application in container

1. Build by babel
`npm run build`

2. Create Image
`docker build -t <IMAGE_NAME> .`

3. Running Application on 3000
`docker run -p 3000:3000 node-hello-world`
