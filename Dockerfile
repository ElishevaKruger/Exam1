
FROM python:3.11-slim as builder

WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt
FROM python:3.11-slim

ENV PATH=/root/.local/bin:$PATH

COPY --from=builder /root/.local /root/.local
COPY convert_image_to_pdf.py .
COPY requirements.txt .

CMD ["python", "convert_image_to_pdf.py"]

