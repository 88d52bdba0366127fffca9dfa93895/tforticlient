# tforticlient

Auto connect to a VPN server with encrypted password, also add more route line without 'input password' many times

# Create a encrypted VPN password

```shell
echo "password" | openssl aes-256-cbc -a -salt
```

and input your password to encrypt

# Add capability NET_ADMIN to 'route' command

```shell
sudo setcap cap_net_admin=+eip $(whereis route | awk '{print $2}')
```

# Usage

```shell
tforticlient
```

and input your password again to decrypt
