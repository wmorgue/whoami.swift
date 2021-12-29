# whoami.swift

Retrieve the current user and environment through simple functions.

### This package can:

- [x] Get the user's full name
- [x] Get the user's username
- [x] Get the user's preferred language(s)
- [x] Get the devices's hostname
- [ ] Some unimplemented TODO


### Example
Add this package to current project and import.

```swift
import Whoami

func main() {
    let host = Whoami().hostName()
    print("Current host: \(host)")
}
```
