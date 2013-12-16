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

Create a DIY OpenShift app with MongoDB and load this repo automatically

	rhc create-app $name diy-0.1 mongodb-2.2 --from-code=https://github.com/fabianofranz/openshift-vertx.git

## Notes for Ruby, Python

If you want to write Ruby or Python applications with Vert.x you will have to install
JRuby and/or Jython in your application and set the env vars JRUBY_HOME and JYTHON_HOME to point
to those installations.

Take a look how we install vert.x in the script .openshift/action_hooks/pre_build for an idea of how to do that.


