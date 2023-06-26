#!/bin/bash

# Server details
server=107.22.144.99
user="ubuntu"

# SSH public key
ssh_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDYYWE6i4Zfaazl9mhKLXCZnthW+d4EKldrNHJhuMwIqLXj3Ff2Y3TI91p+vuCwI3ue23sd0uiUOVe4MkXZyUVc5hVeLlVC41AtxS0Qsv+xXPodq8aqJvlp7CVizJiUOsui9JtRqrTrWQqi6JtX8V3vW4QyOseivH1c6Plykcbqw+QcKESnZ7IAXnzVaR3d1eNUubxA3OXQijDwW2grCle3GEgPsOPnQ967VkhG3xS31gQc+XXLYywnkMALPguvZ0AoZP7dZtDXDMYk2dRTNrakR8E4H+5JGEW95PD54C2u/2Im8YkzR2q03xlhVCcZZ71P3P/sF52BahtkMUDC2lJdfb8OydNqFCAAIVPIX2MjrHEUN7fuzKPJlE6VxPNGWGnDM8yz7HryJzBTHXc9qMPWrBFO2VH+EEkpECpeEhqi+DIZb3Cin4YFIl0MnUHWF8y0jg0EUHyR3ZK9u/NXNR8xYe4L9SvECAwGGlBZZ85/6jzqlpBLfwdvFJodfgAkPFk= moses sakala@DESKTOP-LHDTL0J"

# Connect to the server and add the SSH public key to authorized_keys
ssh ubuntu@107.22.144.99 "mkdir -p ~/.ssh && echo \"$ssh_public_key\" >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"

echo "SSH public key added to the server for user '$user'."
