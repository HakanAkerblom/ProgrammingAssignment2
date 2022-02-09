## Creating a list with functions to 

## 1. set the value of the matrix

## 2. get the value of the matrix

## 3. set the inverse of the matrix

## 3. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL                 
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    get <- function()x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## Creating the inverse to the matrix. If the inverse is already calculated it returns the cached inverse.

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
    
        ## Return a matrix that is the inverse of 'x'
}
