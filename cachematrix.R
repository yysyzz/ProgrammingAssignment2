## Put comments here that give an overall description of what your
## functions do

# Caching the Inverse of a Matrix

## Write a short comment describing this function

#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean
makeCacheMatrix <- function(x = matrix()) {
    r <- NULL
    set <- function(y) {
        x <<- y
        r <<- NULL
    }
    get <- function() x
    setr <- function(rmatrix) m <<- rmatrix
    getr <- function() r
    list(set = set, get = get,
         setr = setr,
         getr = getr)
}


## Write a short comment describing this function
# Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
    r <- x$getr()
    if(!is.null(r)) {
        message("getting cached data")
        return(r)
    }
    data <- x$get()
    r <- solve(data)
    x$setr(r)
    r
}
