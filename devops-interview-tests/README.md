
<h3>How to submit answers:</h3>
- Create a github/gitlab (etc..) public repo<br>
- Upload solutions scripts and files to the new repo<br>
- Send us the link to it<br>

<br><b>Exercise 1: JSON:</b><br>
Pre-requisites: bash scripting or Jenkins pipeline knowledge<br>
Goal: Parse the file https://github.com/BGLCorp/devops-interview-tests/blob/main/ec2-describe-instances.json using a bash script or Jenkins pipeline, and retrieve all the InstanceId that where launched before 2022-04-12T13:00:00<br>

<br><b>Exercise 2: Terraform:</b><br>
Pre-requisites: terraform installed, access to an AWS account to test<br>
Goal: Starting from this local variable:
```
locals {
  users = {
    "user1" = {
      username = "jerome"
      groups   = ["group1", "group2"]
    },
    "user2" = {
      username = "marc"
      groups   = ["group2", "group3"]
    }
  }
}
```
=> create a terraform module that uses the above local variable to create the 3 groups, the 2 IAM users and their group association.<br>

<br><b>Exercise 3: Dockerfile:</b><br>
Goal: Write a multi-stage Dockerfile: The first stage will create a index.html containing:
```<p> Hello World </p>```<br>
The final image will be a nginx image using the above file that:<br>
- prints "starting nginx"<br>
- starts nginx in foreground<br>

<br><b>Exercise 4: AWS IAM:</b><br>
Goal: Write IAM policy to give access to s3 bucket s3://ap-southeast-2-test and kms decrypt action on key id 12345

<br><b>Exercise 5: Kubernetes:</b><br>
Pre-requisites: kubernetes local cluster (minikube, kind ...etc)<br>
Required knowledge: be able to learn new tools, google-fu<br>
<br>
We have an pod that reads a file:
```
apiVersion: v1
kind: Pod
metadata:
  name: myapp-pod
  labels:
    app: myapp
spec:
  containers:
  - name: myapp-container
    image: alpine:latest
    command: ['sh', '-c', 'cat /data/myfile.txt']
    volumeMounts:
    - mountPath: /data
      name: temp
  volumes:
  - emptyDir: {}
    name: temp
```
Except that "/data/myfile.txt" does not exist.<br>
Goal: Add an <b>init</b> pod that will download myfile.txt from this github repo and place it in /data/myfile.txt<br>

<b>extra task:</b> Prepare a 5 minute verbal presentation showcasing your latest Devops project or automation. Focus on the technologies in use and high level steps involved in making the project work.
