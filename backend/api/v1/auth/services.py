def authenticate_user(email: str, password: str):
    return {"user": email, "status": "authenticated"}