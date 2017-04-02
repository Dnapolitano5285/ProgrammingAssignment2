## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The below function creates a 1x4 matrix which stores the data and
## functions necessary to store the inverse of the same matrix
## it chaches the inverse to save time later

makeCacheMatrix <- function(x = matrix()) {
     inverse <- NULL
     set <- function(y) {
          x<<-y
          inverse <<- NULL
     }
     get<-function()x
     setinverse <- function(solved)inverse<<-solved
     getinverse <- function()inverse
     
     matrix(nrow=1,ncol=4,set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
## this function retrieves the stored inverse and tests if it is null
## a null means we have not stored the inverse yet and must compute it
## we then store it for later use and output the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inverse<-x$getinverse()
     if(!is.null(inverse)){
          message("getting cached data")
          return(inverse)
     }
     data<-x$get()
     inverse<-solve(data,...)
     x$setinverse(inverse)
     inverse
}
