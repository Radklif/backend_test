FROM python:alpine

ENV APP_ROOT /app
ENV APP_LINK ./test_backend/app

WORKDIR ${APP_ROOT}

COPY ${APP_LINK}/requirements.txt ${APP_ROOT}

RUN pip install -r requirements.txt

COPY ${APP_LINK} ${APP_ROOT}

RUN chmod +x ${APP_ROOT}/manage.py 
