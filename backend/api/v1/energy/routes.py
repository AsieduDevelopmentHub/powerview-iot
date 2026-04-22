from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()

class EnergyPayload(BaseModel):
    device_id: str
    voltage: float
    current: float
    power: float
    energy_kwh: float

@router.post("/ingest")
def ingest_energy(payload: EnergyPayload):
    return {
        "status": "success",
        "message": "Telemetry received",
        "data": payload.dict()
    }