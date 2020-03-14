# trg-solution

 - **What principles did you apply?**
     + Scripted Jenkinsfile
     + Separate Dockerfiles for python app and nginx
     + NGINX SSL reverse proxy
     + python Hello world app not exposed and available only through nginx as reverse proxy
   
 - **Explain the decisions you made and why you thought it was the best approach**
     
     Decided to build use self-signed certs for nginx ssl proxy, because it is the easiest and customible option to achieve SSL security.
 
 - **What is your recommendation for any future work?**
     It would be great to use kubernetes as container orchestaration system. 