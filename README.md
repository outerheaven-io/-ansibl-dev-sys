# -ansibl-dev-sys
This is a super [WIP] playbook for provisoning a devleopment jump box inside your perimeter, lets call this the deployer.

We intend to customise this in order to create a image using packer. We are currently only testing on GCP. You can run this
on lcoally or remotely by using kitchen. Install version 2.4.1 of ruby and then run 

`bundle install`

Once everything is install you run `kitchen converge` in order to provision, test and develop the playbooks. 

This is in its early stages and it needs to be upgraded to make extensive use of ansible variables.
