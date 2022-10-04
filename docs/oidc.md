## Concept
Flowify uses a token based authentication system based on the "github.com/equinor/flowify-workflows/user".User interface. This is a plugin architecture where each project can implement its own way of authenticating and authorizing users and requests.
The authenticatation layer is placed as a middleware that processes  incoming requests. An auth implementation typically grants access and authorizes users based on 'Authentication' and 'Authorization' headers, but this is not mandated. 

When a request is granted access further processing is done with an augmented 'Contex' containing the given 'User' implementaion. This 'User' object is queried for 'Roles' in every access to resources that require access control (RBAC).

## Details

The `User` interface
```go
// tightly modelled on JWT: http://jwt.io
type User interface {
	GetUid() string
	GetName() string
	GetEmail() string
	GetRoles() []Role
}
```

The `AuthClient` interface
```go
type AuthClient interface {
	Authenticate(r *http.Request) (user.User, error)
}
```
