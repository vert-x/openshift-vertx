# OpenShift template for Vert.x applications

Template for running [Vert.x](https://github.com/purplefox/vert.x) applications on OpenShift

## What it does?

* Installs Vert.x if needed
* Starts application process from $SERVER_FILE

## Configure

Configure Vert.x version etc in .openshift/config.example

## How to start

Create OpenShift application

	rhc app create -a $name -t diy-0.1

and enter the directory

	cd $name

Add this repository as new remote

	git remote add template -m master git://github.com/marekjelen/openshift-vertx.git

and pull locally

	git pull -s recursive -X theirs template master


and deploy to OpenShift

	git push origin master

Now, your application is available at

	http://$name-$namespace.rhcloud.com


