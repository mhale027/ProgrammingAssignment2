## 
## 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inverse <- NULL
      # Initializes a null matrix for the inverse to be stored.
      
      setmatrix = function(y) {
            x <<- y
            inverse <<- NULL
      }
      #Sets the matrix to a new value y and re-initializes the inverse
      #matrix so it can be repopulated.
      
      getmatrix <- function() x
      #Gets the matrix.
      
      setinverse <- function(matrix) inverse <<- matrix
      #Caches the inverse of the matrix to the initialized matrix.
      
      getinverse <- function() inverse
      #Gets the cached inverse.
      
      list(setmatrix = setmatrix, 
            getmatrix = getmatrix,
            setinverse = setinverse,
            getinverse = getinverse) 
      #This list allows for the $ operator when calling the functions
      #nestled in this function.
}


## This function takes the matrix x as an arguement and checks to see if
#the inverse has been calculated. If it has, it retrieves the inverse
#from the cache, and if not, gets the matrix, solves for its inverse, 
#sets the inverse to the cache, and returns the inverse to the console.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inverse <- x$getinverse()
      
      if (!is.null(inverse)){
            message("getting cached matrix")
            return(m)
      }
      matrix <- x$getmatrix()
      
      inverse <- solve(matrix, ...)
      
      x$setinverse(inverse)
      
      inverse
}
