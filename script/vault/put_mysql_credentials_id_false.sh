#!/bin/bash

export VAULT_ADDR='http://127.0.0.1:8200'

vault kv put cubbyhole/mysql username=admin password=123...
