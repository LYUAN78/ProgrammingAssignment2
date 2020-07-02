## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##create a special matrix based on x

makeCacheMatrix <- function(x = matrix()) {
  m<-NA
  set<-function(y){
    x<<-y
    m<<-NA
  }
  get<-function() x
  setinv=function(inv) m<<-inv
  getinv=function() m
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function
##output the inverse of x based on the result of the function above

cacheSolve <- function(x, ...) {
    if (!is.na(x$getinv())){
      message('getting cached data')
      return(x$getinv())
    }
    data<-x$get()
    m<-solve(data)
    x$setinv(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
