# Use uma imagem oficial do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos do projeto
COPY . .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta que o Flask usa
EXPOSE 5000

# Defina o comando de execução
CMD ["python", "app.py"]
