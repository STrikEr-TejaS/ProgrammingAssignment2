
## Write a short comment describing this function
## The below function creates a list that contains a
## function that will:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
	
	inv = NULL
	set = function(y) {
		x <<- y
		inv <<- NULL
		
	}
	get = function()x
	setinv = function(inverse) inv <<- inverse
	getinv = function() inv
	list = (set=set, get=get, setinv=setinv, getinv=getinv)
	

}



cacheSolve <- function(x, ...) {
        inv = x$getinv()
        
        if (!is.null(inv)) {
        	message("Getting cached data")
        	return(inv)
        }
        data = x$get()
        inv = solve(data,...)
        
        x$setinv(inv)
        return(inv)
        	
}
