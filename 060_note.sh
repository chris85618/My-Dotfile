#!/bin/bash
NOTE=$HOME/.setup/note.txt

function note() {
    if [ $# -eq 1 ]; then
        update_ip ${1}
    fi
    cat ${NOTE} | sed -e "s/\${RAND_MAC}/$(rand-mac)/g" -e "s:\${mine}:${my_ip}:g" -e "s:\${bmc}:$(cat ${IP_FILE}):g"
}
alias editnote="${EDITOR} ${NOTE}"
