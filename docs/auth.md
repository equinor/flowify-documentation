Access to the frontend is controlled by a sidecar running [OAuth2 Proxy](https://oauth2-proxy.github.io/oauth2-proxy/). You can use any other OIDC client as long as:

- JWT ID Token is set in `Authorization` header
- JWT token contains role claims

The backend service is not protected by the OAuth2 Proxy. Instead, it verifies and validates the JWT ID token in the `Authorization` header. 

ID Token issued by the following providers are supported:

- Azure

See [Developer Guide](./develop.md) for adding OIDC provider support.