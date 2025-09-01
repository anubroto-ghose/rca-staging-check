from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def main():
  return {
    "content": "root"
}

@app.exception_handler(Exception)
async def exception_handler(request, exc):
    return JSONResponse(
        status_code=500,
        content={"message": "An error occurred: " + str(exc)},
    )
