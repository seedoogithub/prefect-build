from prefect import flow
from prefect_docker.containers import create_docker_container

@flow
def create_docker_container_flow():
    container = create_docker_container(
        image="nginx",
        job_variables={"EXTRA_PIP_PACKAGES": "prefect_docker"},
        command="echo 'hello world!'"
    )

if __name__ == "__main__":
    create_docker_container_flow()