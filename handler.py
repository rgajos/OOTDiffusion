import runpod

def handler(job):
    return {"message": "działa 🚀"}

runpod.serverless.start({"handler": handler})
