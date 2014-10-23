## Put comments here that give an overall description of what your
## functions do
## Compute the inverse of a matrix and put it to cache

## Write a short comment describing this function
## Input a matix
## Functions to :
## set the matrix
## get the matrix
## set the inverse
## get the inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() {
        x
    }
    setInv <- function(inverse) {
        inv <<- inverse
    }
    getInv <- function() {
        inv
    }
    list(set = set,
         get = get,
         setInv = setInv,
         getInv = getInv)
}


## Write a short comment describing this function
## Compute the inverse if it doesn't exist and put it to the cache, otherwise
## get it form the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInv()
    if (!is.null(inv)) {
        message("Getting data from cache")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data) 
    x$setInv(inv)
    inv
}
