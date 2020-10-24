## Funciones que almacenan la inversa de una matriz

## Matriz especial con capacidad de almacenar su inversa

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  ## Configurar la matriz
  
  set <- function(matrix) {
    x <<- matrix
    inv <<- NULL
    
  }
  
  ## Obteniendo la matriz
  
  get <- function() {
    
    x
  }
  
  ## Establecer la inversa de la matriz
  setInverse <- function(inverse) {inv <<- inverse}
  
  ## Obtener la inversa de la matriz
  getInverse <- function() {inv}
  
  ## Lista de metodos
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
}

## Devolviendo una matriz que es inversa a "x"

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}