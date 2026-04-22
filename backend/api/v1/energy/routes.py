from fastapi import APIRouter

router = APIRouter()

@router.post("/ingest")
def ingest_energy(data: dict):
    return {"status": "received", "data": data}