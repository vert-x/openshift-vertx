# OpenShift template for Vert.x applications

Template for running [Vert.x](https://github.com/purplefox/vert.x) applications on OpenShift

## What it does?

* The demo currently runs the Vert.x webapp demo - which is a shop webapp that uses MongoDB at the back-end

## Configuration

is in .openshift/config.example

## Lifecycle hooks

are in .openshift/action_hooks

## All the rest of the stuff

Is the webapp demo from the Vert.x distro

Replace this with your app and update $SERVER_FILE on config.example

## How to create your app (with name $name)

Create OpenShift application

	rhc app create -a $name -t diy-0.1

Add MongoDB (if you need it - the webapp demo does, otherwise don't bother)

	rhc cartridge add mongodb -a $name

This will create a new git repo for your application

and enter the directory

	cd $name

Add _this_ repository as new remote

	git remote add template -m master git://github.com/purplefox/openshift-vertx.git

and pull locally

	git pull -s recursive -X theirs template master

and deploy to OpenShift

	git push origin master

Now, your application is available at

	http://$name-$namespace.rhcloud.com

e.g. https://openshiftvertx-purplefox.rhcloud.com/

## Notes for Ruby, Python

If you want to write Ruby or Python applications with Vert.x you will have to install
JRuby and/or Jython in your application and set the env vars JRUBY_HOME and JYTHON_HOME to point
to those installations.

Take a look how we install vert.x in the script .openshift/action_hooks/pre_build for an idea of how to do that.


