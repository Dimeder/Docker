                        Simple site
This site consists of two hello word pages, second page with base_auth
Before build image you should chnage credentials in Dockerfile
Build and run this image localy
1. git clone git@github.com:Dimeder/Docker.git
2. cd ./docker 
3. docker build -t site:latest .
4. docker run -p 80:80 site:latest 
5. Check it out localhost and localhost/auth (page with base_auth)

Autobuild and push to the DockerHub there is in .github/workflows/docker.yml

                        Deploy to Ubuntu server
0. Install ansible https://cutt.ly/QylmiE9
1. git clone git@github.com:Dimeder/Docker.git
2. cd ./ansible
3. Change variables for your docker image in deploy.yml and add IP in : ./environments/dev/hosts
    - container_name: "example"
    - container_image: "example"
    - image_tag: "latest"
4. ansible-playbook docker.yml
5. ansible-playbook docker.yml
6. Check it your_external_ip and our_external_ip/auth (page with base_auth)
