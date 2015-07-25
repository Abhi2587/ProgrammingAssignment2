# Both of the below functions are use to evaluate, set and retrive the 2 types of matrix from cache : Normal Matrix
## and Inverse Matrix

## Below function would take a matrix input & make a cache of it using the 'set' function
## 'get' function would be used to get the same matrix from cache which is input in the function & set in the cache.
## setinverse is used to set the Inverse matrix calculated using 'cachesolve' function in the cache
## getinverse is used to get the inverse matrix from cache

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
    set <- function(x) {
        m <<- x;
        inverse <<- NULL;
    }
    get <- function() return(m);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Below function is basically use to check that inverse matrix is in the cache or not...If present, then retrieve that only
## otherwise calcuate the inverse of the matrix using 'solve' function and then set that evaluated matrix in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- m$getinv()
    if(!is.null(inverse)) {
        message("Getting cached data...")
        return(inverse)
    }
    data <- m$get()
    invserse <- solve(data, ...)
    m$setinv(inverse)
    return(inverse)
}
