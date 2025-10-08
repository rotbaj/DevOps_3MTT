# Introduction to Linux

**1. Creating my EC2 instance:**

- Amazon Machine Image used -> Amazon Linux. 

![](img/a.EC2_instace_creation.png)


**2. Create key pair:**

- Create a key pair `earthsurf.pem` that would be used to ssh into instance from terminal.

![](img/b.create_key_pair.png)

**3. Launching EC2 instance:**

![](img/c.launching_ec2.png)

**4. Initializing EC2:**
- Allow the newly created instance to be initialized; this would after seeing `2/2 checks passed` in the **Status check** column.
![](img/d.init_ec2.png)

**5. Connecting using SSH (Secure Shell):**

- In the AWS GUI select the newly created instance and click on `Connect`

- Then select to the `SSH client` column

![](img/g.click_connect2ec2.png)

- Follow the instructions as directed by AWS.

Go to MAC terminal and change permissions on the created `earthsurf.pem` file:

``cd`` into ``Downloads`` directory where the pem file was saved

![](img/e.cd_downloads.png)

`ls -l` the contents of the `Downloads` dir
![](img/f.ls_pem.png)

`chmod` the permissions of `earthsurf.pem` file
![](img/h.chmod.png)

![](img/i.chmod.png)

**6. Using the ssh command string provided, try connecting with ssh:**

![](img/j.sshcmd.png)

- Needed to troubleshoot as ssh connection was timing out when attempted, reason was inbound rule did not allow connection from anywhere `0.0.0.0/0` (this is not best practice, only used for the purpose of this demo)

![](img/k.add_inboundrule.png)

- After adding inbound rule, try again
*"success"*!
![](img/l.ssh_succ.png)

**7. Inside ssh connected instance terminal:**

   Update: 
    `sudo yum update`
    ![](img/m.update.png)

`tree` install:
    `sudo yum install tree`
    ![](img/n.treeinstall.png)
    ![](img/o.treecomplete.png)

Make use of tree command:

![](img/p.treeuse1.png)

Now add some directories and file:
![](img/q.addsomedir&file.png)

Use `tree` command again:
![](img/r.treeuse2.png)

Upgrage:
![](img/s.upgrade.png)

Uninstall `tree`:
`sudo yum remove tree`
![](img/t.removetree.png)

Install `nginx`:
`sudo yum install nginx`
![](img/u.installnginx.png)


**8. Finally, terminate instance:**

- Go to AWS GUI, select running instance
- Navigate to & Click on `Instance state`
- From the drop down select `Terminate (delete) instance`
![](img/v.terminateec2.png)


Remember to confirm instance is actually deleted.

---