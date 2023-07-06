### Matrix

makeCacheMatrix =function(x = matrix()) {
  i = NULL
  set = function(y) {
    x <<- y
    i <<- NULL
  }
  get = function() x
  setinverse = function(inverse) i <<- inverse
  getinverse = function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


### Inverse

cacheSolve = function(x, ...) {
  i = x$getinverse()
  if (!is.null(i)) {
    return(i)
  }
  data = x$get()
  i = solve(data, ...)
  x$setinverse(i)
  i
}

### when testing the programme, the matrix of yours always has to be sqauared!!!

# TEST

#a= matrix(10:13, 2, 2)
#> A= makeCacheMatrix(a)
#> cacheSolve(A)

