#!/bin/bash
. $(dirname ${BASH_SOURCE})/../util.sh

desc 'Create Projects'
runc 'oc new-project dev'
runc 'oc new-project qa'
runc 'oc new-project ci-cd'

backtotop
desc 'Provide permissions for jenkins on dev/qa'
runc 'oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n dev'
runc 'oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n qa'
runc 'oc policy add-role-to-group system:image-puller system:serviceaccounts:qa -n dev'

backtotop
desc 'Deploy docker image'
runc 'open https://hub.docker.com/_/mysql/'

