
FROM node:18-alpine

WORKDIR /app

# Install frontend dependencies
COPY package*.json ./
RUN npm install

# Install backend dependencies
COPY backend/package*.json ./backend/
RUN cd backend && npm install

# Copy the application source
COPY . .

# Expose the app ports
EXPOSE 5173 4001

# Start both the backend API and the Vite frontend
CMD ["sh", "-c", "cd /app/backend && node index.js & npm run dev -- --host 0.0.0.0"]

# docker check to karo dev me ha  +  ji ho gya kya

