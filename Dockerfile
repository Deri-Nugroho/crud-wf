# Gunakan image dasar dari Node.js
FROM node:22-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependensi aplikasi
RUN npm install

# Salin seluruh kode aplikasi ke dalam container
COPY . .

# Tentukan port aplikasi berjalan
EXPOSE 8000

# Jalankan aplikasi
CMD ["npm", "start"]