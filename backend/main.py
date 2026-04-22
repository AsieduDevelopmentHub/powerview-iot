from fastapi import FastAPI
from api.v1.auth.routes import router as auth_router
from api.v1.devices.routes import router as device_router
from api.v1.energy.routes import router as energy_router

app = FastAPI(
    title="PowerView API",
    version="1.0.0"
)

# Root test route
@app.get("/")
def root():
    return {"message": "PowerView Backend Running"}

# API routes
app.include_router(auth_router, prefix="/api/v1/auth")
app.include_router(device_router, prefix="/api/v1/devices")
app.include_router(energy_router, prefix="/api/v1/energy")