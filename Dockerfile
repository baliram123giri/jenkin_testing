FROM debian:latest

RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean


WORKDIR /home/frontend_react

# Copy only necessary files to the container
COPY . .

RUN npm install

# Expose the port on which your application will run
EXPOSE 3000


# Start your application
CMD ["npm", "start"]
