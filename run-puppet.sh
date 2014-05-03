#!/bin/bash
sudo puppet apply --modulepath=./modules:/etc/puppet/modules manifests/site.pp
