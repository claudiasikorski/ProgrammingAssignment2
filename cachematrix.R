## Inverse of a Matrix Function

## Creating a matrix as a list with a function that wil set the value of the matrix, get the value of the matrix, set the value of the inverse matrix and get the value of the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y) {
       x <<- y
       i <<- NULL
}
get <- function() x
setinverse <- function(inv)
      i <<- inv
getinverse <- function() i
list(
      set = set,
      get = get,
      setinverse = setinverse,
      getinverse = getinverse
)
}


## Calculate the inverse of the matrix of above function, will use cached result if it is available

cacheSolve <- function(x, ...) {
       i <- x$getinverse()
       if(!is.null(i)) {
             message("getting cached matrix data")
       }
       m <- x$get()
       i <- solve(m, ...)
       x$setinverse(i)
       i
      }


