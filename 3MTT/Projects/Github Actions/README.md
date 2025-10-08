# githubactions
Using github actions.


## Intro to Github Actions

### Project 1:

1. Init a Github repo.
Create a new repo on github `githubactions`
Clone it to local machine
![](img/01.createrepo.png)
![](img/02.clone2local.png)


2. Create a simple node.js app.
Initial a node.js app
Create a simple server using `express.js` to serve the static web page
Add code to repo and push to github
![](img/03.nodejsapp.png)
4. Write first github actions workflow.

Workflow was split into two parts: `ci.yml` & `cd.yml` for improved organisation and code quality.
![](img/04.gitworkflow.png)
![](img/05.ci.png)
![](img/06.cd.png)
![](img/07.pushtoremote.png)
![](img/08.actions1.png)
![](img/09.actions2.png)

5. Learn more.

Further advanced configurations will be done as we progress deeper into using git actions.