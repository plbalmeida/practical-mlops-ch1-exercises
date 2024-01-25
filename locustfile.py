from locust import HttpUser, task
import random


class WebsiteUser(HttpUser):
    @task
    def index(self):
        payload = {
            'x': random.randint(1, 100),
            'y': random.randint(1, 100)
        }
        self.client.post("/", json=payload)
