import fastapi

app = fastapi.FastAPI()

@app.get("/")
def read_home():
    return { "hello": "world" }