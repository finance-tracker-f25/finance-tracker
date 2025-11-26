from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def health_check():
    return {"message": "Personal Finance Tracker Backend is running!"}
