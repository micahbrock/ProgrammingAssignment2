## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## goals of function
## 1. set the matrix
## 2. get the matrix
## 3. invert the matrix
## 4. return the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setinv <- function(solve) I <<- solve
  getinv <- function() I
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)  
}


## steps:  get matrix, check inversion value, return inversion value

cacheSolve <- function(x, ...) {
    I <- x$getinv()
    if(!is.null(I)) {
      message("getting cached data")
      return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setinv(I)
  I
        ## Return a matrix that is the inverse of 'x'
}
