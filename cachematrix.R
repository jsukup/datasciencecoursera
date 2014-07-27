## Two functions based off of supplied examples in Assignment 2


##"makeCacheMatrix" calculates inverse matrix and
## acts as cache for inverse matrix object input

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    strMatrix <- x
    set <- function(y) {
        strMatrix <<- y
        m <<- NULL
    }
    get <- function() x
    setInv <- function() m <<- solve(x)
    getInv <- function() m
    list(set = set, get = get,
         setInv = setInv,
         getInv = getInv)
}

##"cacheSolve" takes object from "makeCacheMatrix", 
##checks for stored inverse matrix,returns value if found,
##else calculates inverse matrix

cacheSolve <- function(x, ...) {
    m <- x$getInv()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInv(m)
    m
}
