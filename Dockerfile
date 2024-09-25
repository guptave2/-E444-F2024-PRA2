#Asked GPT to help with Docker file- also looked at stack overflow

FROM python:3.9-slim

COPY requirements.txt .

#if i copy pip freeze result into requirements.txt- error? why?

RUN pip install virtualenv
RUN virtualenv venv

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=example3.py

#changing port to 4050

EXPOSE 4050

CMD ["flask", "run", "--host=0.0.0.0", "--port=4050"]
