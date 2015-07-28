options( digits = 16 )
library( jsonlite )

alpha = 2.1
beta = 2.5
probs = c( 0, 0.25, 0.5, 0.75, 1 )
y = qgamma( probs, alpha, beta )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/number.json" )
