#!/bin/bash

./packer validate ubuntu18.json
./packer build ubuntu18.json

