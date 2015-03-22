## This function makes it more efficient to
## calculate the inverse of a matrix by creating a cached matrix

makeCacheMatrix <- function(mtx = matrix()) {
    inverse <- NULL
    set <- function(x) {
        mtx <<- x;
        inverse <<- NULL;
    }
    get <- function() return(mtx);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

##cacheSolve caches the inverse of a matrix

cacheSolve <- function (x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
 data <- x$get()
 m <- solve(data, ...)
 x$setinverse(m)
}
