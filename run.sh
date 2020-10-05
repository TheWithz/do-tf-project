case $1 in
    plan)command=plan;;
    apply)command=apply;;
    *)echo "Must use either plan, or apply" && exit 1;;
esac

terraform $command \
    -var "do_token=$DO_TOKEN" \
    -var "pub_key=$HOME/.ssh/id_rsa.pub" \
    -var "pvt_key=$HOME/.ssh/id_rsa" \
    -var "ssh_fingerprint=$SSH_FINGERPRINT"
