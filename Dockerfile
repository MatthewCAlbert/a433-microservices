# Menggunakan Node.js v14 base image
FROM node:14

# Set working directory pada /app
WORKDIR /app

# Copy semua source code ke container
COPY . /app

# Set environment variables
ENV NODE_ENV=production \
    DB_HOST=item-db

# Install dependencies dan build app
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Nyalakan app
CMD ["npm", "start"]