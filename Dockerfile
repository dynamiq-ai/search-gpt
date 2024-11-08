FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=8501

EXPOSE 8501

CMD ["sh", "-c", "streamlit run app.py --server.port=$PORT --server.enableCORS=false"]
