## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function () x
  setinverse <- function (invM) m <<- invM
  getinverse <- function () m
      
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invM <- x$getinverse()
  if (!is.null(invM)) {
    message ("getting cached data")  
    return (invM)
  }
  m <- x$get()
  invM <- solve(m)
  x$setinverse(invM)
  invM
}
