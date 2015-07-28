'use strict';

// MODULES //

var gammaincinv = require( 'compute-gammaincinv' );


// PARTIAL //

/**
* FUNCTION: partial( alpha, beta )
*	Partially applies shape parameter `alpha` and rate parameter `beta` and returns a function for evaluating the quantile function for a Gamma distribution.
*
* @param {Number} alpha - shape parameter
* @param {Number} beta - rate parameter
* @returns {Function} quantile function
*/
function partial( alpha, beta ) {

	/**
	* FUNCTION: quantile( p )
	*	Evaluates the quantile function for a Gamma distribution.
	*
	* @private
	* @param {Number} p - input value
	* @returns {Number} evaluated quantile function
	*/
	return function quantile( p ) {
		if ( p !== p || p < 0 || p > 1 ) {
			return NaN;
		}
		return ( 1 / beta ) * gammaincinv( p, alpha );
	};
} // end FUNCTION partial()


// EXPORTS //

module.exports = partial;
