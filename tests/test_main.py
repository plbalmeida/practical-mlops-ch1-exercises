import pytest
from src.main import app, add


@pytest.fixture
def client():
    with app.test_client() as client:
        yield client


def test_add():
    assert add(1, 1) == 2
    assert add(-1, 1) == 0
    assert add(-1, -1) == -2


def test_index_post(client):
    response = client.post('/', json={'x': 1, 'y': 2})
    assert response.status_code == 200
    assert response.json['result'] == 3


def test_index_post_invalid_data(client):
    response = client.post('/', json={'a': 1, 'b': 2})
    assert response.status_code == 200
    assert response.json['result'] is None


def test_index_post_missing_data(client):
    response = client.post('/', json={'x': 1})
    assert response.status_code == 200
    assert response.json['result'] is None
