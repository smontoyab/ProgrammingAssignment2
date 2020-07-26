## Put comments here that give an overall description of what your
## functions do



## This function creates an object that caches the inverse of a matrix+
## and returns a list with the information


makeCacheMatrix <- function(x = matrix()) {

 i<- NULL
  set<- function(y){
    x<<-y
    i<<- NULL  }
  get<- function()x
  setinverse<- function(inverse) i<<-inverse
  getinverse <- function() i 
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



##This function takes the infomation computed by the makeCacheMatrix
##and then computes the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i<-x$getinverse()
  if(!is.null(i))  {
    message("getting cache data")
    return(i)
  }
  data<-x$get()
  i<-solve(data, ...)
  x$setinverse(i)
  i     '
}
