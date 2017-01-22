## The first function creates a list containning  4 functions to set the matrix and get
## calculate the inverse of the matrix.

## same as the first example function, this function build a list of 4 function. 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<- function (y)
  { x<<- y
    m<<- NULL
  }
  get <- function () x
  setinverse <- function (inverse) m <<- inverse
  getinverse <- function () m
  list (setx=set, get=get, setinverse= setinverse, getinverse= getinverse)
}


## This function calculate the inverse of matrix x.

cacheSolve <- function(x, ...) {
        
      m <- x$getinverse ()
      if(!is.null(m)) 
          { message ("getting cached data")
            return(m)  
          }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse (m)
      return (m)
}
