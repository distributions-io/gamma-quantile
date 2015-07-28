'use strict';

// MODULES //

var gammaincinv = require( 'compute-gammaincinv' );


// QUANTILE //

/**
* FUNCTION: quantile( p, alpha, beta )
*	Evaluates the quantile function for a Gamma distribution with shape parameter `alpha` and rate parameter `beta` at a probability `p`.
*
* @param {Number} p - input value
* @param {Number} alpha - shape parameter
* @param {Number} beta - rate parameter
* @returns {Number} evaluated quantile function
*/
function quantile( p, alpha, beta ) {
	if ( p !== p || p < 0 || p > 1 ) {
		return NaN;
	}
	return ( 1 / beta ) * gammaincinv( p, alpha );
} // end FUNCTION quantile()


// EXPORTS //

module.exports = quantile;
