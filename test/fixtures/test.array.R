options( digits = 16 )
library( jsonlite )


alpha = 12
beta = 4
probs = seq( 0, 1, 0.01 )
y = qgamma( probs, alpha, beta )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/array.json" )
