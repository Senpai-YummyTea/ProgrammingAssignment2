makeCacheMatrix <- function( x = matrix() ) { ##assigning the function to makeCacheMatrix by getting matrix m
  i <- NULL ##To declare the inverse of a matrix
  ## As per definition of a inverse of a matrix. the matrix must have the mxn dimensions equal (m=n)
  set <- function( matrix ) { ##setting up the matrix
    x <<- matrix
    i <<- NULL
  }
  get <- function() {			##procedure to get mxn matrix by calling m on the function
    x ##print x
  }
  setInverse <- function(inverse) {
    i <<- inverse			## setting up the inverse of the matrix
  }
  getInverse <- function() { ##procedure get the inverse of the matrix
    i ##Print i
  }
  list(set = set, get = get, #returning the procedures that were set up earlier
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
  i <- x$getInverse() ##getting the getinverse
  if (!is.null(i)) {
    message("getting cached data") ##for every nonempty(NA) i, value returns with a printing message.
    return(i)
  }
  mat <- x$get()  ##procedure for solving for the matrix inverse 
  i <- solve(mat, ...) 
  x$setInverse(i)
  i
}
