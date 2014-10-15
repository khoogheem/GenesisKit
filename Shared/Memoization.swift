//
//  Memoization.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/14/14.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import Foundation


/**
  A Generic function which will memoize the value passed in.
  
  This is taken from the WWDC 2014 talk on advanced swift..
  
  Exmple :
	let fibonacci: (Int ->  Double) = memoize {
		fibonacci, n in
		return (n < 2) ? Double(n) : fibonacci(n - 1) + fibonacci(n - 2)
	}


  :param: body The body of the object to be memoized
  :returns: The memoized result
  */
func memoize<T: Hashable, U>( body: ( (T)->U, T )->U ) -> (T)->U {
	var memo = Dictionary<T, U>()
	var result: ((T)->U)!
	result = { x in
		if let q = memo[x] { return q }
		let r = body(result, x)
		memo[x] = r
		return r
	}
	return result
}
