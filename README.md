## Shopify

To perform development work on the Shopify embedded application you will need to run the Rails application with SSL. Perform the following steps once to configure MacOS.

1. `echo "127.0.0.1 wfth.dev" | sudo tee -a /etc/hosts`
2. `sudo -p "Please enter your sudo password: " security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" "config/wfth.dev.crt"`

Start the Rails development server in such a way to support SSL.

```
rails s puma -b 'ssl://127.0.0.1:3443?key=config/wfth.dev.key&cert=config/wfth.dev.crt'
```

The https://wfth.myshopify.com development application is configured to load the embedded app from https://wfth.dev:3000.

If there is a need to work with the Shopify embedded application proxy or webhooks feature, the development server must be available to the Shopify servers over the Internet. [`localtunnel`](https://github.com/localtunnel/localtunnel) provides a free solution.
