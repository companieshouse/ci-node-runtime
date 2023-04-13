# ci-node-runtime

Node image used for Concourse runtime

# Building the image
Run the following command in this folder to build a new image:

```
docker build -t ci-node-runtime -f ./Dockerfile . --build-arg NODE_VERSION=<NODE_VERSION> NPM_VERSION=<NPM_VERSION>
```

# Running a container
This will start a container using the previously built image and keep it open in interactive mode. To exit the container use `CTRL + C`.

```
docker run -it --rm ci-node-runtime 
```

# Deleting the image
View all images to find the image ID

```
docker images
```

Delete the image using the image ID.

```
docker rm [ID]
```