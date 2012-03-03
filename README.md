# OpenShift template for Vert.x applications

Template for running [Vert.x](https://github.com/purplefox/vert.x) applications on OpenShift

Vert.x requires JDK7 ... that is not available on OpenShift. **See Legal section below. Is there any other distribution?**

## What it does?

* Installs JDK7 if needed
* Installs Vert.x if needed
* Installs JRuby if needed
* Starts application process from $SERVER_FILE

## How to start

Create OpenShift application

	rhc app create -a $name -t raw-0.1

and enter the directory

	cd $name

Add this repository as new remote

	git remote add template -m master git://github.com/marekjelen/openshift-vertx.git

and pull locally

	git pull -s recursive -X theirs template master

configure your application

	cp .openshift/config.example .openshift/config
	$EDITOR .openshift/config

and deploy to OpenShift

	git push origin master

Now, your application is available at

	http://$name-$namespace.rhcloud.com

## Legal

This template downloads Oracle's JDK, by using this template you have to **agree with Oracle's license agreement**

	http://www.oracle.com/technetwork/java/javase/terms/license/index.html

