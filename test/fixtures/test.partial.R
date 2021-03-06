options( digits = 16 )
library( jsonlite )


alpha = 1.2
beta = 1.4
probs = c( 0, 0.25, 0.5, 0.75, 1 )
y = qgamma( probs, alpha, beta )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/partial.json" )
