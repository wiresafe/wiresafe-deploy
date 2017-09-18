# wiresafe-deploy
Deployment scripts, Docker, Kubernetes, etc... for Wiresafe projects

## Matrix/Synapse

## Build or Update Synapse Docker Image

If you make changes to matrix-synapse/Dockerfile you'll need to rebuild and push the images to google cloud.

```bash
$ cd src/matrix/docker

$ docker build -t gcr.io/wiresafe-project/matrix .

$ gcloud docker -- push gcr.io/wiresafe-project/matrix

// update the deployment docker image to rebuild the container

$ kubectl set image deploy/matrix matrix=gcr.io/wiresafe-project/matrix:latest --namespace=matrix
```
In case `kubectl` complains about missing connection to localhost refused, you need to set the right config:
```
# List the clusters, use yours. we'll go with matrix-cluster in this example
$ gcloud container clusters list

# Get a config
$ gcloud container clusters get-credentials matrix-cluster

```

## Kubernetes Deployment
To deploy matrix home server and identity server from scratch.

```bash
$ kubectl apply -f src/matrix/deploy  

```

## Riot Deployment

### Build / test docker image

Use the --build-arg BRANCH={branch} to set the branch to use for the image - the default is wiresafe-stage

```bash
$ docker build -t riot --build-arg BRANCH=wiresafe-prod .

---

$ docker run -p 8080:80 -d riot
$ open http://localhost:8080
```

### Deploy with kubernetes

```bash
$ kubectl apply -f deploy-riot-prod.yaml
$ kubectl apply -f deploy-riot-stage.yaml
```
