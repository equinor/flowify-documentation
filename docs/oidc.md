## Concept
Flowify uses a token based authentication system based on the `AuthClient`- and `User`-interfaces in "github.com/equinor/flowify-workflows/auth" and "github.com/equinor/flowify-workflows/user". This is a plugin architecture where each project can implement its own way of authenticating and authorizing users and requests.

The authenticatation layer is placed as a middleware that processes  incoming requests. An auth implementation typically grants access and authorizes users based on 'Authentication' and 'Authorization' headers, but this is not mandated. 


## Details

The `User` interface
```go
// tightly modelled on JWT: http://jwt.io
type User interface {
    // a unique id connected with each user, eg Azure's oid token claim
	GetUid() string
    // the full name of a user, not used for identification only searching and ordering
	GetName() string
    // the user's email address
	GetEmail() string
	// the roles that a user has been granted, to be used in access control
    GetRoles() []Role
}
```

The `AuthClient` interface
```go
type AuthClient interface {
    // The authentication layer is performed as a middleware before any resources
    // can be accessed
    //  * If the authentication returns a non-nil error the middleware
    //    stops the processing and returns an error resonse
    //  * If the error is nil the user object is required to be valid
	Authenticate(r *http.Request) (user.User, error)
}
```

### Implementing the `AuthClient` interface 
The `auth` package contains a mock implementation that reads a static user on server startup, and always passes authentication with the credentials of the given user.

```go
// the mock authenticator can be used for testing
type MockAuthenticator struct {
	User user.MockUser
}

func (m MockAuthenticator) Authenticate(r *http.Request) (user.User, error) {
	return m.User, nil
}
```




## Retrieving user information for a granted request 
When a request is granted access further processing is done with an augmented `Contex` containing the given user implementaion. This `User` interface object can be queried for `Roles` used to authorize access to resources that require access control (RBAC). 

The user package contains the following utility to simplify access
```go
// retrieve a User object from the context if available, otherwise return nil 
func GetUser(ctx context.Context) User 
```

All `Handler`s in the api are required to have this context.

