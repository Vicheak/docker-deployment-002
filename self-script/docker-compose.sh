echo "Enter your docker compose file path :"
read file

cat << EOF > $file
version: "3.8"

services:
  postgres-db:
    image: postgres:$1
    container_name: $2
    ports:
      - "$3:5432"
    environment:
      POSTGRES_USER: $4
      POSTGRES_PASSWORD: $5
      POSTGRES_DB: $6
EOF