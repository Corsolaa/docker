echo "👤 Admin gebruiker aanmaken..."
docker exec -it superset superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@localhost \
              --password admin

echo "⚙️ Database upgraden..."
docker exec -it superset superset db upgrade

echo "🔐 Rollen en permissies initialiseren..."
docker exec -it superset superset init

echo "✅ Klaar! Je kunt nu inloggen op http://localhost:8088 met admin / admin"