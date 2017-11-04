## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



  
  
## The function below creates a special matric object that will cache the inverse of it
makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## The function below works out the inverse of the matrix created above.
##the inverse will be retrieved from the cache if it has already been calculated.
##This will save computing time

cacheSolve <- function(x, ...) {

  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
  
  
}
