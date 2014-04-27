## Put comments here that give an overall description of what your
## functions do

## This function is creating a matrix vector of any size provided by the user as input and it calculates the inverse of that matrix

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## This function finds out if the inverse of the said matrix exists already . If it does , the inverse is printed out from the cache otherwise the inverse is calculated

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m

        ## Return a matrix that is the inverse of 'x'
}

