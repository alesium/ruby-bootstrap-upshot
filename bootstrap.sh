#!/bin/sh
exit 0
set -x
BOOTSTRAP_URL="https://github.com/alesium/ruby-bootstrap-upshot.git"

curl -s https://raw.githubusercontent.com/alesium/common-bootstrap-upshot/master/bootstrap.sh > /tmp/common-bootstrap.sh
. /tmp/common-bootstrap.sh

ansible-pull -d ${TEMPDIR}/ruby-bootstrap-upshot -i ${ANSIBLE_HOSTFILE} -e "ansible_python_interpreter=${PYTHONEXEC}" -U ${BOOTSTRAP_URL}
rm /tmp/common-bootstrap.sh
