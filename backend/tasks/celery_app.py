from celery import Celery
from config import REDIS_URL

celery = Celery(
    "powerview",
    broker=REDIS_URL,
    backend=REDIS_URL
)