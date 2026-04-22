from tasks.celery_app import celery

@celery.task
def update_billing(device_id: str):
    return {"status": "billing updated", "device_id": device_id}