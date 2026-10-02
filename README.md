# WhatsApp Clone

A Vue 3 chat application inspired by WhatsApp, built with Vite, Pinia, Firebase, and a simple Express backend for Google OAuth verification.

## Features

- User authentication with Google sign-in
- Chat list and message view experience
- Firebase Firestore-backed data layer
- Vue Router navigation
- Tailwind CSS styling
- Docker support for running the full app in one container

## Tech Stack

- Frontend: Vue 3, Vite, Pinia, Vue Router, Tailwind CSS
- Backend: Node.js, Express
- Auth: Google OAuth via Google Auth Library
- Database: Firebase Firestore

## Project Structure

```bash
.
├── backend/
│   ├── index.js
│   └── package.json
├── src/
│   ├── components/
│   ├── router/
│   ├── store/
│   ├── views/
│   ├── App.vue
│   ├── firebase-init.js
│   └── main.js
├── Dockerfile
├── index.html
├── package.json
├── postcss.config.cjs
├── tailwind.config.cjs
├── vite.config.js
└── README.md
```

## Prerequisites

Before running the project, make sure you have installed:

- Node.js 18+
- npm
- Docker (optional, for containerized setup)

## Local Development

1. Install frontend dependencies:

```bash
npm install
```

2. Install backend dependencies:

```bash
cd backend
npm install
```

3. Start the backend server:

```bash
cd backend
npm run watch
```

4. Start the frontend development server in another terminal:

```bash
npm run dev -- --host 0.0.0.0
```

5. Open the app in your browser:

```bash
http://localhost:5173
```

The backend API runs on:

```bash
http://localhost:4001
```

## Docker Setup

Build the image:

```bash
docker build -t whatsapp-clone .
```

Run the container:

```bash
docker run -p 5173:5173 -p 4001:4001 whatsapp-clone
```

Then open:

```bash
http://localhost:5173
```

## Firebase and Google Configuration

This project currently contains Firebase and Google OAuth configuration values directly in the source code. For a real deployment, update the following files with your own project credentials:

- `src/firebase-init.js`
- `backend/index.js`

You will need:

- Firebase project configuration
- Google OAuth client ID

## Notes

- The frontend uses Vite and runs by default on port `5173`.
- The backend Express app listens on port `4001`.
- The app is designed as a frontend prototype/demo and may require extra configuration for production use.

## License

This project is licensed under the ISC License.

## Author

Built as a small chat app prototype using Vue and Firebase.