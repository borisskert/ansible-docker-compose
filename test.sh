#!/bin/bash

ansible-playbook test.yml -i test_inventory --ask-become-pass
