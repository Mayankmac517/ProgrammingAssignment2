## Creating a Matrix object that can cache its inverse



makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    m <<- NULL
    }
  get <- function() x
  inverse <- function(solve) m <<- solve
  getinverse <- function() m

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
 m <- solve(data, ...)
 x$inverse(m)
 m

}
