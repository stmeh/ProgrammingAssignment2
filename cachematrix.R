## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
Inverse <- NULL

# set for matrix
set <- function(y) {
    x <<- y
    Inverse <<- NULL
    }
 # get for matrix
 get <- function() x
 
 #set for matrix inverse
 
 setinverse <- function(in)
 inverse <<- in
 
 # get for matrix inverse
 getinverse <- function() inverse
 
 list(get=get, set=set, getinverse=getinverse, setinverse=setinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        
         if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        
        #if inverse not already cached, calculate and store in cache
        
        
  matrix <- x$getinverse()
  inverse <- solve(matrix, ...)
  
  # cache inverse
  x$setinverse(invverse)
  
  # return inverse of matrix
  return(inverse)
}

