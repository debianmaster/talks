#!/bin/bash
. $(dirname ${BASH_SOURCE})/../util.sh

desc 'Provide permissions for jenkins on dev/qa'
runc 'oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n dev'
runc 'oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n qa'
runc 'oc policy add-role-to-group system:image-puller system:serviceaccounts:qa -n dev'


