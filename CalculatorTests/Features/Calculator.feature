﻿Feature: Calculator

@SetFirstNumber
Scenario: Add two numbers
	Given the second number is 70
	When the two numbers are added
	Then the result should be 120

Scenario Outline: Subtract two numbers
	Given the first number is <x>
	And the second number is <y>
	When the two numbers are subtracted
	Then the result should be <result>
Examples:
| x  | y   | result |
| 50 | 70  | -20    |
| 90 | -10 | 100    |

Scenario: Delta
	When I calculate delta from 2,2,-3 as coefficients of the quadratic equation
	Then the equation has 2 real number solutions
	When I calculate delta from 1,1,1 as coefficients of the quadratic equation
	Then the equation has 0 real number solutions
	When I calculate delta from 1,-2,1 as coefficients of the quadratic equation
	Then the equation has 1 real number solutions




