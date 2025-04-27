FROM mariadb:11-ubi

# Set environment variables (optional, helpful)

# Copy custom initialization scripts
COPY ./volumes/initdb/init.sql /docker-entrypoint-initdb.d/init.sql

# Optionally expose the port (Postgres default)
EXPOSE 3306
