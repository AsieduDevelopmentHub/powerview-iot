import os
from dotenv import load_dotenv

load_dotenv()

API_VERSION = "v1"
DATABASE_URL = os.getenv("DATABASE_URL", "")
REDIS_URL = os.getenv("REDIS_URL", "redis://localhost:6379")