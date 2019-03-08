## Put comments here that give an overall description of what your
## functions do
##Creating two functions that work together to return the inverse of a matrix.

## Write a short comment describing this function
##makeCacheMatrix sets up the functions/objects to store,set and retrieve the inverse
makeCacheMatrix <- function(x = matrix()) {
    i<-NULL
  set<- function(y){
    x<<-y
    i<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse) i<<-inverse
  getinverse<-function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
##cacheSolve checks if the inverse is cached, if not then it calculates it and sets it.  If the inverse is cached, then it just returns the inverse and message
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<-x$get()
  i<-solve(data,...)
  x$setinverse(i)
  i
     ## Return a matrix that is the inverse of 'x'
}
