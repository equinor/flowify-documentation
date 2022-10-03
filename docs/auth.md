Access to the frontend is controlled by a sidecar running [OAuth2 Proxy](https://oauth2-proxy.github.io/oauth2-proxy/). You can use any other OIDC client as long as:

- JWT ID Token is set in `Authorization` header
- JWT token contains role claims

ID Token issued by the following providers are supported:

- Azure

See [Developer Guide](./oidc.md) for adding OIDC provider support.