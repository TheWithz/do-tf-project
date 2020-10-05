# Digital Ocean Terraform Project

This repo follows along with https://github.com/groovemonkey/digitalocean-terraform

A small change I made was to have the Digital Ocean API Key in a separate file,
rather than in plain text inside variables.tf

I made this change mostly so I woulnd't have to worry about accidentally
committing my key to this repository. 

To make that work, it was necessary to remove the newline character with:
`truncate -s -1 /home/thewithz/do-tf-project/keys/do_token`
