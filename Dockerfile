# imagem from ECR repository (https://gallery.ecr.aws/docker/library/python) 
FROM public.ecr.aws/docker/library/python:slim-bullseye

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "src/main.py"]
