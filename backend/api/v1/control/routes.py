from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()

class RelayPayload(BaseModel):
    device_id: str
    state: str  # ON / OFF

@router.post("/relay")
def control_relay(payload: RelayPayload):
    return {
        "status": "success",
        "device_id": payload.device_id,
        "relay_state": payload.state
    }