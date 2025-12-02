# Utilise une image Python officielle
FROM python:3.12-slim
# Dossier de travail
WORKDIR /app
# Copier le script
COPY app.py .
# Commande par défaut
CMD ["python", "app.py"]
