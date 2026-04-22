# PowerView Backend

Backend built with FastAPI, Celery, Redis, and Supabase.

## Responsibilities
- Device authentication
- Energy data ingestion
- Billing calculations
- Alert system
- Relay control API
- Tariff management

## Architecture
API Versioning: /api/v1/

Modules:
- auth
- devices
- energy
- billing
- control
- alerts

## Background Processing
Celery + Redis handles:
- billing updates
- anomaly detection
- analytics