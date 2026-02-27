To use Jenkinsfile from a repo

- Add the main repo url

- If private repo > add credentials in Jenkins 

- You can't use the full repo URL string, you need to split it in two: branch and path

- Branch spelling in Jenkins should be " main " , not /main - no slashes

- Script Path should be "folder-with-pipeline/Jenkinsfile