options( digits = 16 )
library( jsonlite )

alpha = 2
beta = 2
probs = 0:24 / 25
y = qgamma( probs, alpha, beta )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = probs,
	expected = y
)


write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/matrix.json" )
