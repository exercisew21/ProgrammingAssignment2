## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix creates a special "matrix" object that can cache its inverse

## set the value of the matrix
makeCacheMatrix <- function(x = matrix()) { 
        inverse <- NULL ## inverse is null
set <- function(y) {
        x <<- y
        inverse <<- NULL
}
        get <- function() x
        setinv <- function(matrix.solved)  inverse <<- matrix.solved
        getinv <- function() inverse
        list(set = set, get = get,
             setinv = setimv,
             getinv = getinv)
}


## Write a short comment describing this function

## calculates the inverse of the "matrix" returned by makeCacheMatrix, if has been calculated
##then it should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setInverse(inverse)
        inverse
        ## Return a matrix that is the inverse of 'x'
}
