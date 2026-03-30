import runpod

print("START HANDLER")  # debug

def handler(job):
    print("REQUEST RECEIVED")
    return {"message": "działa 🚀"}

runpod.serverless.start({"handler": handler})
