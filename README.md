# wiresafe-deploy
Deployment scripts, Docker, Kubernetes, etc... for Wiresafe projects

## Build / test docker image

Use the --build-arg BRANCH={branch} to set the branch to use for the image - the default is wiresafe-stage

```bash
$ docker build -t riot --build-arg BRANCH=wiresafe-prod .
```

## Deploy with kubernetes

```bash
$ kubectl apply -f deploy-riot-prod.yaml
$ kubectl apply -f deploy-riot-stage.yaml
```
