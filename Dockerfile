FROM registry.access.redhat.com/ubi8/python-39@sha256:15176f49f95d2b10cd42bbd6e71daaf6f850734f732c8a397f1c87aed5aaeb75

RUN pip install --upgrade pip
RUN pip install ukv

ENV SERVER_URL="ukv.ukv-operator-system.svc.cluster.local:38709"
COPY test-db.py /app/test-db.py

CMD ["python", "/app/test-db.py"]